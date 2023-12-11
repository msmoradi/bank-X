// auth_interceptor.dart

import 'package:banx/core/domain/repository/token_repository.dart';
import 'package:banx/core/networking/api_endpoints.dart';
import 'package:banx/core/networking/model/dto/error_action_handler.dart';
import 'package:banx/core/networking/model/dto/error_dto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:synchronized/synchronized.dart';
import 'package:logger/logger.dart';

@lazySingleton
class AuthInterceptor extends Interceptor {
  final TokenRepository tokenRepository;
  final Dio refreshDio;
  Dio? _dio; // Will be set after Dio is created
  final Lock _lock = Lock();
  final Logger logger;

  AuthInterceptor({
    required this.tokenRepository,
    @Named('RefreshDio') required this.refreshDio,
    required this.logger,
  });

  /// Setter to inject the main Dio instance to avoid circular dependencies.
  void setDio(Dio dio) {
    _dio = dio;
  }

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      final String? token = await tokenRepository.getAccessToken();
      if (token != null) {
        options.headers["Authorization"] = "Bearer $token";
        logger.d("Authorization header added for request: ${options.path}");
      } else {
        logger.w(
            "No access token found. Proceeding without Authorization header.");
      }
      handler.next(options); // Proceed with the request
    } catch (e, stackTrace) {
      logger.e("Failed to add Authorization header",
          error: e, stackTrace: stackTrace);
      handler.next(options); // Proceed without the token
    }
  }

  @override
  Future<void> onError(
      DioException error, ErrorInterceptorHandler handler) async {
    if (error.response == null) {
      // No response received; pass the error along.
      logger
          .w("No response received for request: ${error.requestOptions.path}");
      handler.next(error);
      return;
    }

    final statusCode = error.response?.statusCode;
    final responseData = error.response?.data;

    if (statusCode == null) {
      logger.w(
          "Received response without a status code for request: ${error.requestOptions.path}");
      handler.next(error);
      return;
    }

    logger.w(
        "Received error response with status code $statusCode for request: ${error.requestOptions.path}");

    switch (statusCode) {
      case 404:
        await _handleNotFound(error, responseData, handler);
        break;
      case 403:
        await _handleForbidden(error, responseData, handler);
        break;
      case 401:
        await _handleUnauthorized(error, handler);
        break;
      default:
        // For other status codes, pass the error along.
        handler.next(error);
    }
  }

  /// Handles 404 Forbidden responses.
  Future<void> _handleNotFound(DioException error, dynamic responseData,
      ErrorInterceptorHandler handler) async {
    try {
      final errorDto = ErrorDto(
          error: null,
          code: 404,
          message: error.message ?? '',
          action: ErrorAction.loggedOut);
      logger.e(
          "404 NotFound Error: ${errorDto.message}. Initiating handleErrorAction with action: ${errorDto.action}");
      handleErrorAction(errorDto);
    } catch (e, stackTrace) {
      logger.e("Failed to parse ErrorDto from 403 response",
          error: e, stackTrace: stackTrace);
    }
  }

  /// Handles 403 Forbidden responses.
  Future<void> _handleForbidden(DioException error, dynamic responseData,
      ErrorInterceptorHandler handler) async {
    try {
      final errorDto = ErrorDto.fromJson(responseData);
      logger.e(
          "403 Forbidden Error: ${errorDto.message}. Initiating handleErrorAction with action: ${errorDto.action}");
      handleErrorAction(errorDto);
    } catch (e, stackTrace) {
      logger.e("Failed to parse ErrorDto from 403 response",
          error: e, stackTrace: stackTrace);
    }
  }

  /// Handles 401 Unauthorized responses by attempting to refresh the token.
  Future<void> _handleUnauthorized(
      DioException error, ErrorInterceptorHandler handler) async {
    // Prevent multiple retries
    if (error.requestOptions.extra['retried'] == true) {
      logger.w(
          "Request ${error.requestOptions.path} has already been retried. Passing the error along.");
      handler.next(error);
      return;
    }

    error.requestOptions.extra['retried'] = true;

    await _lock.synchronized(() async {
      try {
        final currentAccessToken = await tokenRepository.getAccessToken();
        final authHeader =
            error.requestOptions.headers['Authorization'] as String?;

        // Check if another request has already refreshed the token
        if (authHeader != null && authHeader != 'Bearer $currentAccessToken') {
          logger.i(
              "Access token already refreshed by another request. Retrying original request: ${error.requestOptions.path}");
          await _retryRequest(
              error.requestOptions, handler, currentAccessToken ?? "");
          return;
        }

        // Proceed to refresh the token
        final refreshToken = await tokenRepository.getRefreshToken();
        if (refreshToken == null) {
          logger.w(
              "No refresh token available. Unable to refresh access token for request: ${error.requestOptions.path}");
          handler.next(error);
          return;
        }

        logger.i(
            "Attempting to refresh access token for request: ${error.requestOptions.path}");
        final refreshResponse = await refreshDio.post(
          ApiEndpoint.auth(AuthEndpoint.REFRESH),
          data: {'refreshToken': refreshToken},
          options: Options(
            validateStatus: (status) => status! < 500,
          ),
        );

        if (refreshResponse.statusCode == 200) {
          await _processSuccessfulTokenRefresh(
              refreshResponse.data, error.requestOptions, handler);
        } else if (refreshResponse.statusCode == 403) {
          await _handleRefreshForbidden(refreshResponse.data, error, handler);
        } else {
          logger.w(
              "Unexpected status code ${refreshResponse.statusCode} during token refresh for request: ${error.requestOptions.path}");
          handler.next(error);
        }
      } catch (e, stackTrace) {
        logger.e(
            "Error during token refresh for request: ${error.requestOptions.path}",
            error: e,
            stackTrace: stackTrace);
        handler.next(error);
      }
    });
  }

  /// Processes a successful token refresh by saving the new tokens and retrying the original request.
  Future<void> _processSuccessfulTokenRefresh(Map<String, dynamic> data,
      RequestOptions requestOptions, ErrorInterceptorHandler handler) async {
    final newAccessToken = data['accessToken'] as String?;
    final newRefreshToken = data['refreshToken'] as String?;

    if (newAccessToken != null && newRefreshToken != null) {
      await tokenRepository.saveAccessToken(newAccessToken);
      await tokenRepository.saveRefreshToken(newRefreshToken);
      logger.i("Access token refreshed successfully.");

      // Update the Authorization header and retry the original request
      final updatedRequestOptions = requestOptions.copyWith(
        headers: {
          ...requestOptions.headers,
          'Authorization': 'Bearer $newAccessToken',
        },
      );

      logger.i(
          "Retrying original request: ${updatedRequestOptions.path} with new access token.");
      await _retryRequest(updatedRequestOptions, handler, newAccessToken);
    } else {
      logger.e("Token refresh response missing tokens.");
      handler.next(DioException(
        requestOptions: requestOptions,
        error: "Token refresh failed: Missing tokens.",
        type: DioExceptionType.badResponse,
        response: Response(
          requestOptions: requestOptions,
          statusCode: 403,
          data: 'Missing tokens in refresh response.',
        ),
      ));
    }
  }

  /// Handles a 403 response during token refresh.
  Future<void> _handleRefreshForbidden(dynamic responseData, DioException error,
      ErrorInterceptorHandler handler) async {
    try {
      final errorDto = ErrorDto.fromJson(responseData);
      logger.e(
          "Token refresh failed with 403 Forbidden: ${errorDto.message}. Initiating handleErrorAction with action: ${errorDto.action}");
      handleErrorAction(errorDto);
    } catch (e, stackTrace) {
      logger.e("Failed to parse ErrorDto from 403 refresh response",
          error: e, stackTrace: stackTrace);
    }
  }

  /// Retries the original request with the updated access token.
  Future<void> _retryRequest(RequestOptions requestOptions,
      ErrorInterceptorHandler handler, String accessToken) async {
    try {
      logger
          .i("Retrying request: ${requestOptions.path} with new access token.");
      final response = await _dio!.fetch(requestOptions);
      logger.i("Request: ${requestOptions.path} retried successfully.");
      handler.resolve(response);
    } catch (e, stackTrace) {
      logger.e("Failed to retry request: ${requestOptions.path}",
          error: e, stackTrace: stackTrace);
      handler.next(e is DioException
          ? e
          : DioException(
              requestOptions: requestOptions,
              error: e,
              type: DioExceptionType.unknown,
            ));
    }
  }

  /// Handles error actions based on the [ErrorAction] enum.
  void handleErrorAction(ErrorDto? errorDto) {
    if (errorDto == null || errorDto.action == null) {
      logger.w("No ErrorAction provided. Skipping action handling.");
      return;
    }

    logger.i("Handling ErrorAction: $errorDto.action");
    ErrorActionHandler().performAction(
      action: errorDto.action!,
      message: errorDto.message,
    );
  }
}
