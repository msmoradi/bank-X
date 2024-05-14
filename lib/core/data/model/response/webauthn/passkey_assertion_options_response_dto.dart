// lib/data/dto/passkey_assertion_options_response_dto.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'passkey_assertion_options_response_dto.freezed.dart';

part 'passkey_assertion_options_response_dto.g.dart';

@freezed
class PasskeyAssertionOptionsResponseDTO
    with _$PasskeyAssertionOptionsResponseDTO {
  const factory PasskeyAssertionOptionsResponseDTO({
    required String requestId,
    required PublicKeyAssertionOptionsDTO publicKey,
    String? errorMessage,
  }) = _PasskeyAssertionOptionsResponseDTO;

  factory PasskeyAssertionOptionsResponseDTO.fromJson(
          Map<String, dynamic> json) =>
      _$PasskeyAssertionOptionsResponseDTOFromJson(json);
}

@freezed
class PublicKeyAssertionOptionsDTO with _$PublicKeyAssertionOptionsDTO {
  const factory PublicKeyAssertionOptionsDTO({
    required String challenge,
    required int timeout,
    required String rpId,
    required List<AllowCredentialDTO> allowCredentials,
    required String userVerification,
  }) = _PublicKeyAssertionOptionsDTO;

  factory PublicKeyAssertionOptionsDTO.fromJson(Map<String, dynamic> json) =>
      _$PublicKeyAssertionOptionsDTOFromJson(json);
}

@freezed
class AllowCredentialDTO with _$AllowCredentialDTO {
  const factory AllowCredentialDTO({
    required String id,
    required String type,
  }) = _AllowCredentialDTO;

  factory AllowCredentialDTO.fromJson(Map<String, dynamic> json) =>
      _$AllowCredentialDTOFromJson(json);
}
