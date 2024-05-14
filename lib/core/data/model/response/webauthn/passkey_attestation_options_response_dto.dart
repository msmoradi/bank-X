// lib/data/dto/passkey_attestation_options_response_dto.dart

import 'package:banx/core/data/model/request/webauthn/passkey_attestation_options_request_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'passkey_attestation_options_response_dto.freezed.dart';
part 'passkey_attestation_options_response_dto.g.dart';

@freezed
class PasskeyAttestationOptionsResponseDTO with _$PasskeyAttestationOptionsResponseDTO {
  const factory PasskeyAttestationOptionsResponseDTO({
    required String requestId,
    required PublicKeyDTO publicKey,
  }) = _PasskeyAttestationOptionsResponseDTO;

  factory PasskeyAttestationOptionsResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$PasskeyAttestationOptionsResponseDTOFromJson(json);
}

@freezed
class PublicKeyDTO with _$PublicKeyDTO {
  const factory PublicKeyDTO({
    required RpDTO rp,
    required UserDTO user,
    required String challenge,
    required List<PubKeyCredParamDTO> pubKeyCredParams,
    required int timeout,
    required List<ExcludeCredentialDTO> excludeCredentials,
    required AuthenticatorSelectionDTO authenticatorSelection,
    required String attestation,
  }) = _PublicKeyDTO;

  factory PublicKeyDTO.fromJson(Map<String, dynamic> json) =>
      _$PublicKeyDTOFromJson(json);
}

@freezed
class RpDTO with _$RpDTO {
  const factory RpDTO({
    required String name,
    required String id,
  }) = _RpDTO;

  factory RpDTO.fromJson(Map<String, dynamic> json) => _$RpDTOFromJson(json);
}

@freezed
class UserDTO with _$UserDTO {
  const factory UserDTO({
    required String id,
    required String name,
    required String displayName,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) => _$UserDTOFromJson(json);
}

@freezed
class PubKeyCredParamDTO with _$PubKeyCredParamDTO {
  const factory PubKeyCredParamDTO({
    required String type,
    required int alg,
  }) = _PubKeyCredParamDTO;

  factory PubKeyCredParamDTO.fromJson(Map<String, dynamic> json) =>
      _$PubKeyCredParamDTOFromJson(json);
}

@freezed
class ExcludeCredentialDTO with _$ExcludeCredentialDTO {
  const factory ExcludeCredentialDTO({
    required String type,
    required String id,
  }) = _ExcludeCredentialDTO;

  factory ExcludeCredentialDTO.fromJson(Map<String, dynamic> json) =>
      _$ExcludeCredentialDTOFromJson(json);
}
