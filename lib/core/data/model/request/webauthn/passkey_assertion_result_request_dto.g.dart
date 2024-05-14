// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passkey_assertion_result_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasskeyAssertionResultRequestDTOImpl
    _$$PasskeyAssertionResultRequestDTOImplFromJson(
            Map<String, dynamic> json) =>
        _$PasskeyAssertionResultRequestDTOImpl(
          requestId: json['requestId'] as String,
          assertionResult: AssertionResultDTO.fromJson(
              json['assertionResult'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$PasskeyAssertionResultRequestDTOImplToJson(
        _$PasskeyAssertionResultRequestDTOImpl instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'assertionResult': instance.assertionResult,
    };

_$AssertionResultDTOImpl _$$AssertionResultDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$AssertionResultDTOImpl(
      id: json['id'] as String,
      response: ResponseDTO.fromJson(json['response'] as Map<String, dynamic>),
      type: json['type'] as String,
      clientExtensionResults:
          json['clientExtensionResults'] as Map<String, dynamic>,
      rawId: json['rawId'] as String,
      authenticatorAttachment: json['authenticatorAttachment'] as String,
    );

Map<String, dynamic> _$$AssertionResultDTOImplToJson(
        _$AssertionResultDTOImpl instance) =>
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
      authenticatorData: json['authenticatorData'] as String,
      signature: json['signature'] as String,
      userHandle: json['userHandle'] as String,
      clientDataJSON: json['clientDataJSON'] as String,
    );

Map<String, dynamic> _$$ResponseDTOImplToJson(_$ResponseDTOImpl instance) =>
    <String, dynamic>{
      'authenticatorData': instance.authenticatorData,
      'signature': instance.signature,
      'userHandle': instance.userHandle,
      'clientDataJSON': instance.clientDataJSON,
    };
