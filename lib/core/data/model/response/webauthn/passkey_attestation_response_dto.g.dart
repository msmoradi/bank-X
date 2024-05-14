// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passkey_attestation_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasskeyAttestationResponseDTOImpl
    _$$PasskeyAttestationResponseDTOImplFromJson(Map<String, dynamic> json) =>
        _$PasskeyAttestationResponseDTOImpl(
          status: json['status'] as String,
          credential: CredentialDTO.fromJson(
              json['credential'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$PasskeyAttestationResponseDTOImplToJson(
        _$PasskeyAttestationResponseDTOImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'credential': instance.credential,
    };

_$CredentialDTOImpl _$$CredentialDTOImplFromJson(Map<String, dynamic> json) =>
    _$CredentialDTOImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      nickName: json['nickName'] as String,
      registrationTime: DateTime.parse(json['registrationTime'] as String),
      lastUsedTime: DateTime.parse(json['lastUsedTime'] as String),
      iconURI: json['iconURI'] as String,
      isHighAssurance: json['isHighAssurance'] as bool,
      state: json['state'] as String,
    );

Map<String, dynamic> _$$CredentialDTOImplToJson(_$CredentialDTOImpl instance) =>
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
