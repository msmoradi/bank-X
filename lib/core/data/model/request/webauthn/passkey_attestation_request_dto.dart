// lib/data/dto/passkey_attestation_request_dto.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'passkey_attestation_request_dto.freezed.dart';
part 'passkey_attestation_request_dto.g.dart';

@freezed
class PasskeyAttestationRequestDTO with _$PasskeyAttestationRequestDTO {
  const factory PasskeyAttestationRequestDTO({
    required String requestId,
    @JsonKey(name: 'makeCredentialResult') required MakeCredentialResultDTO makeCredentialResult,
  }) = _PasskeyAttestationRequestDTO;

  factory PasskeyAttestationRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$PasskeyAttestationRequestDTOFromJson(json);
}

@freezed
class MakeCredentialResultDTO with _$MakeCredentialResultDTO {
  const factory MakeCredentialResultDTO({
    required String id,
    required ResponseDTO response,
    required String type,
    @JsonKey(name: 'clientExtensionResults') required Map<String, dynamic> clientExtensionResults,
    @JsonKey(name: 'rawId') required String rawId,
    @JsonKey(name: 'authenticatorAttachment') required String authenticatorAttachment,
  }) = _MakeCredentialResultDTO;

  factory MakeCredentialResultDTO.fromJson(Map<String, dynamic> json) =>
      _$MakeCredentialResultDTOFromJson(json);
}

@freezed
class ResponseDTO with _$ResponseDTO {
  const factory ResponseDTO({
    required String clientDataJSON,
    required String attestationObject,
    required List<String> transports,
  }) = _ResponseDTO;

  factory ResponseDTO.fromJson(Map<String, dynamic> json) => _$ResponseDTOFromJson(json);
}
