// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passkey_attestation_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasskeyAttestationRequestDTOImpl _$$PasskeyAttestationRequestDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$PasskeyAttestationRequestDTOImpl(
      requestId: json['requestId'] as String,
      makeCredentialResult: MakeCredentialResultDTO.fromJson(
          json['makeCredentialResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PasskeyAttestationRequestDTOImplToJson(
        _$PasskeyAttestationRequestDTOImpl instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'makeCredentialResult': instance.makeCredentialResult,
    };

_$MakeCredentialResultDTOImpl _$$MakeCredentialResultDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$MakeCredentialResultDTOImpl(
      id: json['id'] as String,
      response: ResponseDTO.fromJson(json['response'] as Map<String, dynamic>),
      type: json['type'] as String,
      clientExtensionResults:
          json['clientExtensionResults'] as Map<String, dynamic>,
      rawId: json['rawId'] as String,
      authenticatorAttachment: json['authenticatorAttachment'] as String,
    );

Map<String, dynamic> _$$MakeCredentialResultDTOImplToJson(
        _$MakeCredentialResultDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'response': instance.response,
      'type': instance.type,
      'clientExtensionResults': instance.clientExtensionResults,
      'rawId': instance.rawId,
      'authenticatorAttachment': instance.authenticatorAttachment,
    };

_$ResponseDTOImpl _$$ResponseDTOImplFromJson(Map<String, dynamic> json) =>
    _$ResponseDTOImpl(
      clientDataJSON: json['clientDataJSON'] as String,
      attestationObject: json['attestationObject'] as String,
      transports: (json['transports'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ResponseDTOImplToJson(_$ResponseDTOImpl instance) =>
    <String, dynamic>{
      'clientDataJSON': instance.clientDataJSON,
      'attestationObject': instance.attestationObject,
      'transports': instance.transports,
    };
