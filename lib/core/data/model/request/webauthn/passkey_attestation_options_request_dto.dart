// lib/data/dto/passkey_attestation_options_request_dto.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'passkey_attestation_options_request_dto.freezed.dart';
part 'passkey_attestation_options_request_dto.g.dart';

@freezed
class PasskeyAttestationOptionsRequestDTO with _$PasskeyAttestationOptionsRequestDTO {
  const factory PasskeyAttestationOptionsRequestDTO({
    required String userName,
    required String displayName,
    required AuthenticatorSelectionDTO authenticatorSelection,
    required String attestation,
  }) = _PasskeyAttestationOptionsRequestDTO;

  factory PasskeyAttestationOptionsRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$PasskeyAttestationOptionsRequestDTOFromJson(json);
}

@freezed
class AuthenticatorSelectionDTO with _$AuthenticatorSelectionDTO {
  const factory AuthenticatorSelectionDTO({
    required String residentKey,
    required String authenticatorAttachment,
    required String userVerification,
  }) = _AuthenticatorSelectionDTO;

  factory AuthenticatorSelectionDTO.fromJson(Map<String, dynamic> json) =>
      _$AuthenticatorSelectionDTOFromJson(json);
}
