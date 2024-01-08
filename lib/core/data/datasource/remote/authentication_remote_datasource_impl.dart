import 'package:banx/core/data/datasource/remote/authentication_remote_datasource.dart';
import 'package:banx/core/data/model/empty_response_dto.dart';
import 'package:banx/core/data/model/response/kyc_response_dto.dart';
import 'package:banx/core/data/model/send_otp_response_dto.dart';
import 'package:banx/core/data/model/sign_up_response_dto.dart';
import 'package:banx/core/data/model/token_dto.dart';
import 'package:banx/core/networking/api_endpoints.dart';
import 'package:banx/core/networking/http_client.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

@LazySingleton(as: AuthenticationRemoteDataSource)
class AuthenticationRemoteDataSourceImpl
    extends AuthenticationRemoteDataSource {
  final HTTPClient apiService;

  AuthenticationRemoteDataSourceImpl({required this.apiService});

  @override
  Future<SendOtpResponseDto> sendOtp(
    String phoneNumber,
  ) {
    final body = {
      'phoneNumber': phoneNumber.toEnglishDigit(),
    };
    return apiService.post(
      endpoint: ApiEndpoint.auth(AuthEndpoint.SEND_OTP),
      data: body,
      mapper: (response) {
        if (response != null) {
          return SendOtpResponseDto.fromJson(response);
        }
        throw NotNullableError('sendOtp response should not be null');
      },
    );
  }

  @override
  Future<TokenDto> verifyOtp(
    String phoneNumber,
    String otp,
  ) {
    final body = {
      'phoneNumber': phoneNumber.toEnglishDigit(),
      'otp': otp.toEnglishDigit(),
    };
    return apiService.post(
      endpoint: ApiEndpoint.auth(AuthEndpoint.VERIFY_OTP),
      data: body,
      mapper: (response) {
        if (response != null) {
          return TokenDto.fromJson(response);
        }
        throw NotNullableError('verifyOtp response should not be null');
      },
    );
  }

  @override
  Future<EmptyResponseDto> putPassword(String password) {
    final body = {
      'password': password.toEnglishDigit(),
    };

    return apiService.put(
      endpoint: ApiEndpoint.auth(AuthEndpoint.PASSWORD),
      data: body,
      mapper: (_) {
        return EmptyResponseDto.empty();
      },
    );
  }

  @override
  Future<TokenDto> postPassword(String password) {
    final body = {
      'password': password.toEnglishDigit(),
    };

    return apiService.post(
      endpoint: ApiEndpoint.auth(AuthEndpoint.PASSWORD),
      data: body,
      mapper: (response) {
        if (response != null) {
          return TokenDto.fromJson(response);
        }
        throw NotNullableError('postPassword response should not be null');
      },
    );
  }

  @override
  Future<KycResponseDto> kyc() {
    return apiService.get(
        endpoint: ApiEndpoint.kyc(KYCEndpoint.KYC),
        mapper: KycResponseDto.fromJson);
  }

  @override
  Future<SignUpResponseDto> signup({
    required String phoneNumber,
    required String nationalId,
    required String birthDate,
    String? referralCode,
  }) {
    final body = {
      'phoneNumber': phoneNumber.toEnglishDigit(),
      'nationalId': nationalId.toEnglishDigit(),
      'birthDate': birthDate.toEnglishDigit(),
    };

    return apiService.post(
      endpoint: ApiEndpoint.auth(AuthEndpoint.SIGN_UP),
      data: body,
      mapper: (response) {
        if (response != null) {
          return SignUpResponseDto.fromJson(response);
        }
        throw NotNullableError('signup response should not be null');
      },
    );
  }

  @override
  Future<SignUpResponseDto> identityCorrection({
    required String birthDate,
  }) {
    final body = {
      'birthDate': birthDate.toEnglishDigit(),
    };

    return apiService.put(
      endpoint: ApiEndpoint.auth(AuthEndpoint.IDENTITY_CORRECTION),
      data: body,
      mapper: (response) {
        if (response != null) {
          return SignUpResponseDto.fromJson(response);
        }
        throw NotNullableError('signup response should not be null');
      },
    );
  }
}
