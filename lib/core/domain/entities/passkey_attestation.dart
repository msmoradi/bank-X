// lib/domain/entities/passkey_attestation.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'passkey_attestation.freezed.dart';
part 'passkey_attestation.g.dart';

@freezed
class PasskeyAttestation with _$PasskeyAttestation {
  const factory PasskeyAttestation({
    required String status,
    required Credential credential,
  }) = _PasskeyAttestation;

  factory PasskeyAttestation.fromJson(Map<String, dynamic> json) =>
      _$PasskeyAttestationFromJson(json);
}

@freezed
class Credential with _$Credential {
  const factory Credential({
    required String id,
    required String type,
    required String nickName,
    required DateTime registrationTime,
    required DateTime lastUsedTime,
    required String iconURI,
    required bool isHighAssurance,
    required String state,
  }) = _Credential;

  factory Credential.fromJson(Map<String, dynamic> json) =>
      _$CredentialFromJson(json);
}
