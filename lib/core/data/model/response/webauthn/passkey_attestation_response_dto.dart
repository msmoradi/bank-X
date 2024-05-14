// lib/data/dto/passkey_attestation_response_dto.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'passkey_attestation_response_dto.freezed.dart';
part 'passkey_attestation_response_dto.g.dart';

@freezed
class PasskeyAttestationResponseDTO with _$PasskeyAttestationResponseDTO {
  const factory PasskeyAttestationResponseDTO({
    required String status,
    required CredentialDTO credential,
  }) = _PasskeyAttestationResponseDTO;

  factory PasskeyAttestationResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$PasskeyAttestationResponseDTOFromJson(json);
}

@freezed
class CredentialDTO with _$CredentialDTO {
  const factory CredentialDTO({
    required String id,
    required String type,
    required String nickName,
    required DateTime registrationTime,
    required DateTime lastUsedTime,
    required String iconURI,
    required bool isHighAssurance,
    required String state,
  }) = _CredentialDTO;

  factory CredentialDTO.fromJson(Map<String, dynamic> json) =>
      _$CredentialDTOFromJson(json);
}
