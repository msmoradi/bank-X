// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passkey_assertion_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasskeyAssertionOptionsImpl _$$PasskeyAssertionOptionsImplFromJson(
        Map<String, dynamic> json) =>
    _$PasskeyAssertionOptionsImpl(
      requestId: json['requestId'] as String,
      publicKey: PublicKeyAssertionOptions.fromJson(
          json['publicKey'] as Map<String, dynamic>),
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$PasskeyAssertionOptionsImplToJson(
        _$PasskeyAssertionOptionsImpl instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'publicKey': instance.publicKey,
      'errorMessage': instance.errorMessage,
    };

_$PublicKeyAssertionOptionsImpl _$$PublicKeyAssertionOptionsImplFromJson(
        Map<String, dynamic> json) =>
    _$PublicKeyAssertionOptionsImpl(
      challenge: json['challenge'] as String,
      timeout: (json['timeout'] as num).toInt(),
      rpId: json['rpId'] as String,
      allowCredentials: (json['allowCredentials'] as List<dynamic>)
          .map((e) => AllowCredential.fromJson(e as Map<String, dynamic>))
          .toList(),
      userVerification: json['userVerification'] as String,
    );

Map<String, dynamic> _$$PublicKeyAssertionOptionsImplToJson(
        _$PublicKeyAssertionOptionsImpl instance) =>
    <String, dynamic>{
      'challenge': instance.challenge,
      'timeout': instance.timeout,
      'rpId': instance.rpId,
      'allowCredentials': instance.allowCredentials,
      'userVerification': instance.userVerification,
    };

_$AllowCredentialImpl _$$AllowCredentialImplFromJson(
        Map<String, dynamic> json) =>
    _$AllowCredentialImpl(
      id: json['id'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$AllowCredentialImplToJson(
        _$AllowCredentialImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };
