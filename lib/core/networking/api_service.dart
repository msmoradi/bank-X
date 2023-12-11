import 'dart:convert';

import 'package:banx/core/domain/repository/token_repository.dart';
import 'package:banx/core/networking/exceptions/network_exception.dart';
import 'package:banx/core/networking/model/dto/error_dto.dart';
import 'package:banx/core/networking/typedefs.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'http_client.dart';

@LazySingleton(as: HTTPClient)
class ApiService implements HTTPClient {
  final Dio dio;
  final TokenRepository tokenRepository;

  ApiService({required this.dio, required this.tokenRepository});

  @override
  Future<T> get<T>({
    required String endpoint,
    JSON? queryParameters,
    Options? options,
    required T Function(JSON responseBody) mapper,
  }) async {
    try {
      final response = await dio.get<JSON>(
        endpoint,
        options: options,
        queryParameters: queryParameters,
      );
      return mapper(response.data!);
    } on DioException catch (result) {
      throw _handleDioError(result);
    } catch (e) {
      throw RequestErrorException(e.toString());
    }
  }

  @override
  Future<T> post<T>(
      {required String endpoint,
      Object? data,
      Options? options,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress,
      required T Function(Map<String, dynamic>? response) mapper}) async {
    try {
      final response = await dio.post<JSON>(
        endpoint,
        data: data,
        options: options,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return mapper(response.data);
    } on DioException catch (result) {
      throw _handleDioError(result);
    } catch (e) {
      throw RequestErrorException(e.toString());
    }
  }

  @override
  Future<T> put<T>({
    required String endpoint,
    JSON? data,
    Options? options,
    required T Function(Map<String, dynamic>? response) mapper,
  }) async {
    try {
      final response = await dio.put<JSON>(
        endpoint,
        data: data,
        options: options,
      );

      return mapper(response.data);
    } on DioException catch (result) {
      throw _handleDioError(result);
    } catch (e) {
      throw RequestErrorException(e.toString());
    }
  }

  NetworkException _handleDioError(DioException error) {
    if (error.response != null && error.response!.data is String) {
      try {
        final Map<String, dynamic> errorData =
            json.decode(error.response!.data);
        final errorModel = ErrorDto.fromJson(errorData);
        return RequestErrorException(errorModel.message);
      } catch (e) {
        return RequestErrorException(error.response!.data.toString());
      }
    } else if (error.response != null &&
        error.response!.data is Map<String, dynamic>) {
      final errorModel = ErrorDto.fromJson(error.response!.data);
      return RequestErrorException(errorModel.message);
    } else {
      return RequestErrorException(error.message);
    }
  }
}
