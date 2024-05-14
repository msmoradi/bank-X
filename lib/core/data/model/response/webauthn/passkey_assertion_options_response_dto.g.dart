// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passkey_assertion_options_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasskeyAssertionOptionsResponseDTOImpl
    _$$PasskeyAssertionOptionsResponseDTOImplFromJson(
            Map<String, dynamic> json) =>
        _$PasskeyAssertionOptionsResponseDTOImpl(
          requestId: json['requestId'] as String,
          publicKey: PublicKeyAssertionOptionsDTO.fromJson(
              json['publicKey'] as Map<String, dynamic>),
          errorMessage: json['errorMessage'] as String?,
        );

Map<String, dynamic> _$$PasskeyAssertionOptionsResponseDTOImplToJson(
        _$PasskeyAssertionOptionsResponseDTOImpl instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'publicKey': instance.publicKey,
      'errorMessage': instance.errorMessage,
    };

_$PublicKeyAssertionOptionsDTOImpl _$$PublicKeyAssertionOptionsDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$PublicKeyAssertionOptionsDTOImpl(
      challenge: json['challenge'] as String,
      timeout: (json['timeout'] as num).toInt(),
      rpId: json['rpId'] as String,
      allowCredentials: (json['allowCredentials'] as List<dynamic>)
          .map((e) => AllowCredentialDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      userVerification: json['userVerification'] as String,
    );

Map<String, dynamic> _$$PublicKeyAssertionOptionsDTOImplToJson(
        _$PublicKeyAssertionOptionsDTOImpl instance) =>
    <String, dynamic>{
      'challenge': instance.challenge,
      'timeout': instance.timeout,
      'rpId': instance.rpId,
      'allowCredentials': instance.allowCredentials,
      'userVerification': instance.userVerification,
    };

_$AllowCredentialDTOImpl _$$AllowCredentialDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$AllowCredentialDTOImpl(
      id: json['id'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$AllowCredentialDTOImplToJson(
        _$AllowCredentialDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };
