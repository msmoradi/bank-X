// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passkey_attestation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasskeyAttestationImpl _$$PasskeyAttestationImplFromJson(
        Map<String, dynamic> json) =>
    _$PasskeyAttestationImpl(
      status: json['status'] as String,
      credential:
          Credential.fromJson(json['credential'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PasskeyAttestationImplToJson(
        _$PasskeyAttestationImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'credential': instance.credential,
    };

_$CredentialImpl _$$CredentialImplFromJson(Map<String, dynamic> json) =>
    _$CredentialImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      nickName: json['nickName'] as String,
      registrationTime: DateTime.parse(json['registrationTime'] as String),
      lastUsedTime: DateTime.parse(json['lastUsedTime'] as String),
      iconURI: json['iconURI'] as String,
      isHighAssurance: json['isHighAssurance'] as bool,
      state: json['state'] as String,
    );

Map<String, dynamic> _$$CredentialImplToJson(_$CredentialImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'nickName': instance.nickName,
      'registrationTime': instance.registrationTime.toIso8601String(),
      'lastUsedTime': instance.lastUsedTime.toIso8601String(),
      'iconURI': instance.iconURI,
      'isHighAssurance': instance.isHighAssurance,
      'state': instance.state,
    };
