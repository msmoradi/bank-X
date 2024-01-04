import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_otp_response_dto.freezed.dart';
part 'send_otp_response_dto.g.dart';

@freezed
class SendOtpResponseDto with _$SendOtpResponseDto {
  const factory SendOtpResponseDto({
    required bool needSignup,
    required bool needReferralCode,
    required int? expiresIn,
    required int? codeLength,
  }) = _SendOtpResponseDto;

  factory SendOtpResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SendOtpResponseDtoFromJson(json);
}
