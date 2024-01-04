// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_otp_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendOtpResponseDtoImpl _$$SendOtpResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SendOtpResponseDtoImpl(
      needSignup: json['needSignup'] as bool,
      needReferralCode: json['needReferralCode'] as bool,
      expiresIn: (json['expiresIn'] as num?)?.toInt(),
      codeLength: (json['codeLength'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SendOtpResponseDtoImplToJson(
        _$SendOtpResponseDtoImpl instance) =>
    <String, dynamic>{
      'needSignup': instance.needSignup,
      'needReferralCode': instance.needReferralCode,
      'expiresIn': instance.expiresIn,
      'codeLength': instance.codeLength,
    };
