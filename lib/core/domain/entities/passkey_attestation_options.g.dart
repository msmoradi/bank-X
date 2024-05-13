// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passkey_attestation_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasskeyAttestationOptionsImpl _$$PasskeyAttestationOptionsImplFromJson(
        Map<String, dynamic> json) =>
    _$PasskeyAttestationOptionsImpl(
      requestId: json['requestId'] as String,
      publicKey: PublicKey.fromJson(json['publicKey'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PasskeyAttestationOptionsImplToJson(
        _$PasskeyAttestationOptionsImpl instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'publicKey': instance.publicKey,
    };

_$PublicKeyImpl _$$PublicKeyImplFromJson(Map<String, dynamic> json) =>
    _$PublicKeyImpl(
      rp: Rp.fromJson(json['rp'] as Map<String, dynamic>),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      challenge: json['challenge'] as String,
      pubKeyCredParams: (json['pubKeyCredParams'] as List<dynamic>)
          .map((e) => PubKeyCredParam.fromJson(e as Map<String, dynamic>))
          .toList(),
      timeout: (json['timeout'] as num).toInt(),
      excludeCredentials: (json['excludeCredentials'] as List<dynamic>)
          .map((e) => ExcludeCredential.fromJson(e as Map<String, dynamic>))
          .toList(),
      authenticatorSelection: AuthenticatorSelection.fromJson(
          json['authenticatorSelection'] as Map<String, dynamic>),
      attestation: json['attestation'] as String,
    );

Map<String, dynamic> _$$PublicKeyImplToJson(_$PublicKeyImpl instance) =>
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

_$RpImpl _$$RpImplFromJson(Map<String, dynamic> json) => _$RpImpl(
      name: json['name'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$RpImplToJson(_$RpImpl instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      displayName: json['displayName'] as String,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'displayName': instance.displayName,
    };

_$PubKeyCredParamImpl _$$PubKeyCredParamImplFromJson(
        Map<String, dynamic> json) =>
    _$PubKeyCredParamImpl(
      type: json['type'] as String,
      alg: (json['alg'] as num).toInt(),
    );

Map<String, dynamic> _$$PubKeyCredParamImplToJson(
        _$PubKeyCredParamImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'alg': instance.alg,
    };

_$ExcludeCredentialImpl _$$ExcludeCredentialImplFromJson(
        Map<String, dynamic> json) =>
    _$ExcludeCredentialImpl(
      type: json['type'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$ExcludeCredentialImplToJson(
        _$ExcludeCredentialImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
    };

_$AuthenticatorSelectionImpl _$$AuthenticatorSelectionImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticatorSelectionImpl(
      residentKey: json['residentKey'] as String,
      authenticatorAttachment: json['authenticatorAttachment'] as String,
      userVerification: json['userVerification'] as String,
    );

Map<String, dynamic> _$$AuthenticatorSelectionImplToJson(
        _$AuthenticatorSelectionImpl instance) =>
    <String, dynamic>{
      'residentKey': instance.residentKey,
      'authenticatorAttachment': instance.authenticatorAttachment,
      'userVerification': instance.userVerification,
    };
