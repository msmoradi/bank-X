import 'package:banx/core/data/model/empty_response_dto.dart';
import 'package:banx/core/data/model/response/kyc_response_dto.dart';
import 'package:banx/core/data/model/send_otp_response_dto.dart';
import 'package:banx/core/data/model/sign_up_response_dto.dart';
import 'package:banx/core/data/model/token_dto.dart';

abstract class AuthenticationRemoteDataSource {
  Future<EmptyResponseDto> putPassword(
    String password,
  );

  Future<TokenDto> postPassword(
    String password,
  );

  Future<TokenDto> verifyOtp(
    String phoneNumber,
    String otp,
  );

  Future<SignUpResponseDto> signup({
    required String phoneNumber,
    required String nationalId,
    required String birthDate,
    String? referralCode,
  });

  Future<SignUpResponseDto> identityCorrection({
    required String birthDate,
  });

  Future<SendOtpResponseDto> sendOtp(
    String phoneNumber,
  );

  Future<KycResponseDto> kyc();
}
