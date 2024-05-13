// lib/domain/entities/passkey_attestation_options.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'passkey_attestation_options.freezed.dart';
part 'passkey_attestation_options.g.dart';

@freezed
class PasskeyAttestationOptions with _$PasskeyAttestationOptions {
  const factory PasskeyAttestationOptions({
    required String requestId,
    required PublicKey publicKey,
  }) = _PasskeyAttestationOptions;

  factory PasskeyAttestationOptions.fromJson(Map<String, dynamic> json) =>
      _$PasskeyAttestationOptionsFromJson(json);
}

@freezed
class PublicKey with _$PublicKey {
  const factory PublicKey({
    required Rp rp,
    required User user,
    required String challenge,
    required List<PubKeyCredParam> pubKeyCredParams,
    required int timeout,
    required List<ExcludeCredential> excludeCredentials,
    required AuthenticatorSelection authenticatorSelection,
    required String attestation,
  }) = _PublicKey;

  factory PublicKey.fromJson(Map<String, dynamic> json) =>
      _$PublicKeyFromJson(json);
}

@freezed
class Rp with _$Rp {
  const factory Rp({
    required String name,
    required String id,
  }) = _Rp;

  factory Rp.fromJson(Map<String, dynamic> json) => _$RpFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String name,
    required String displayName,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class PubKeyCredParam with _$PubKeyCredParam {
  const factory PubKeyCredParam({
    required String type,
    required int alg,
  }) = _PubKeyCredParam;

  factory PubKeyCredParam.fromJson(Map<String, dynamic> json) =>
      _$PubKeyCredParamFromJson(json);
}

@freezed
class ExcludeCredential with _$ExcludeCredential {
  const factory ExcludeCredential({
    required String type,
    required String id,
  }) = _ExcludeCredential;

  factory ExcludeCredential.fromJson(Map<String, dynamic> json) =>
      _$ExcludeCredentialFromJson(json);
}

@freezed
class AuthenticatorSelection with _$AuthenticatorSelection {
  const factory AuthenticatorSelection({
    required String residentKey,
    required String authenticatorAttachment,
    required String userVerification,
  }) = _AuthenticatorSelection;

  factory AuthenticatorSelection.fromJson(Map<String, dynamic> json) =>
      _$AuthenticatorSelectionFromJson(json);
}
