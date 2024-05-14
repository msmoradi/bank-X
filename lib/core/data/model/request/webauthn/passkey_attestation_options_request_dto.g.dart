// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passkey_attestation_options_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasskeyAttestationOptionsRequestDTOImpl
    _$$PasskeyAttestationOptionsRequestDTOImplFromJson(
            Map<String, dynamic> json) =>
        _$PasskeyAttestationOptionsRequestDTOImpl(
          userName: json['userName'] as String,
          displayName: json['displayName'] as String,
          authenticatorSelection: AuthenticatorSelectionDTO.fromJson(
              json['authenticatorSelection'] as Map<String, dynamic>),
          attestation: json['attestation'] as String,
        );

Map<String, dynamic> _$$PasskeyAttestationOptionsRequestDTOImplToJson(
        _$PasskeyAttestationOptionsRequestDTOImpl instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'displayName': instance.displayName,
      'authenticatorSelection': instance.authenticatorSelection,
      'attestation': instance.attestation,
    };

_$AuthenticatorSelectionDTOImpl _$$AuthenticatorSelectionDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticatorSelectionDTOImpl(
      residentKey: json['residentKey'] as String,
      authenticatorAttachment: json['authenticatorAttachment'] as String,
      userVerification: json['userVerification'] as String,
    );

Map<String, dynamic> _$$AuthenticatorSelectionDTOImplToJson(
        _$AuthenticatorSelectionDTOImpl instance) =>
    <String, dynamic>{
      'residentKey': instance.residentKey,
      'authenticatorAttachment': instance.authenticatorAttachment,
      'userVerification': instance.userVerification,
    };
