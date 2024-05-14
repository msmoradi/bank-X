// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passkey_attestation_options_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasskeyAttestationOptionsResponseDTOImpl
    _$$PasskeyAttestationOptionsResponseDTOImplFromJson(
            Map<String, dynamic> json) =>
        _$PasskeyAttestationOptionsResponseDTOImpl(
          requestId: json['requestId'] as String,
          publicKey:
              PublicKeyDTO.fromJson(json['publicKey'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$PasskeyAttestationOptionsResponseDTOImplToJson(
        _$PasskeyAttestationOptionsResponseDTOImpl instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'publicKey': instance.publicKey,
    };

_$PublicKeyDTOImpl _$$PublicKeyDTOImplFromJson(Map<String, dynamic> json) =>
    _$PublicKeyDTOImpl(
      rp: RpDTO.fromJson(json['rp'] as Map<String, dynamic>),
      user: UserDTO.fromJson(json['user'] as Map<String, dynamic>),
      challenge: json['challenge'] as String,
      pubKeyCredParams: (json['pubKeyCredParams'] as List<dynamic>)
          .map((e) => PubKeyCredParamDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      timeout: (json['timeout'] as num).toInt(),
      excludeCredentials: (json['excludeCredentials'] as List<dynamic>)
          .map((e) => ExcludeCredentialDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      authenticatorSelection: AuthenticatorSelectionDTO.fromJson(
          json['authenticatorSelection'] as Map<String, dynamic>),
      attestation: json['attestation'] as String,
    );

Map<String, dynamic> _$$PublicKeyDTOImplToJson(_$PublicKeyDTOImpl instance) =>
    <String, dynamic>{
      'rp': instance.rp,
      'user': instance.user,
      'challenge': instance.challenge,
      'pubKeyCredParams': instance.pubKeyCredParams,
      'timeout': instance.timeout,
      'excludeCredentials': instance.excludeCredentials,
      'authenticatorSelection': instance.authenticatorSelection,
      'attestation': instance.attestation,
    };

_$RpDTOImpl _$$RpDTOImplFromJson(Map<String, dynamic> json) => _$RpDTOImpl(
      name: json['name'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$RpDTOImplToJson(_$RpDTOImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };

_$UserDTOImpl _$$UserDTOImplFromJson(Map<String, dynamic> json) =>
    _$UserDTOImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      displayName: json['displayName'] as String,
    );

Map<String, dynamic> _$$UserDTOImplToJson(_$UserDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'displayName': instance.displayName,
    };

_$PubKeyCredParamDTOImpl _$$PubKeyCredParamDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$PubKeyCredParamDTOImpl(
      type: json['type'] as String,
      alg: (json['alg'] as num).toInt(),
    );

Map<String, dynamic> _$$PubKeyCredParamDTOImplToJson(
        _$PubKeyCredParamDTOImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'alg': instance.alg,
    };

_$ExcludeCredentialDTOImpl _$$ExcludeCredentialDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ExcludeCredentialDTOImpl(
      type: json['type'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$ExcludeCredentialDTOImplToJson(
        _$ExcludeCredentialDTOImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
    };
