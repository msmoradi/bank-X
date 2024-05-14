// lib/data/dto/passkey_assertion_result_request_dto.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:passkeys_platform_interface/types/types.dart';

part 'passkey_assertion_result_request_dto.freezed.dart';

part 'passkey_assertion_result_request_dto.g.dart';

@freezed
class PasskeyAssertionResultRequestDTO with _$PasskeyAssertionResultRequestDTO {
  const factory PasskeyAssertionResultRequestDTO({
    required String requestId,
    @JsonKey(name: 'assertionResult')
    required AssertionResultDTO assertionResult,
  }) = _PasskeyAssertionResultRequestDTO;

  factory PasskeyAssertionResultRequestDTO.fromJson(
          Map<String, dynamic> json) =>
      _$PasskeyAssertionResultRequestDTOFromJson(json);
}

@freezed
class AssertionResultDTO with _$AssertionResultDTO {
  const factory AssertionResultDTO({
    required String id,
    required ResponseDTO response,
    required String type,
    @JsonKey(name: 'clientExtensionResults')
    required Map<String, dynamic> clientExtensionResults,
    @JsonKey(name: 'rawId') required String rawId,
    @JsonKey(name: 'authenticatorAttachment')
    required String authenticatorAttachment,
  }) = _AssertionResultDTO;

  factory AssertionResultDTO.fromJson(Map<String, dynamic> json) =>
      _$AssertionResultDTOFromJson(json);
}

@freezed
class ResponseDTO with _$ResponseDTO {
  const factory ResponseDTO({
    required String authenticatorData,
    required String signature,
    required String userHandle,
    required String clientDataJSON,
  }) = _ResponseDTO;

  factory ResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$ResponseDTOFromJson(json);
}

extension RegisterResponseMapper on RegisterResponseType {
  PasskeyAssertionResultRequestDTO toPasskeyAssertionResultRequestDTO({
    String requestId = "",
    String authenticatorAttachment = "",
    Map<String, dynamic> clientExtensionResults = const {},
  }) {
    return PasskeyAssertionResultRequestDTO(
      requestId: requestId,
      assertionResult: AssertionResultDTO(
        id: id,
        response: ResponseDTO(
          authenticatorData: attestationObject,
          signature: '', // Assuming signature needs to be provided separately
          userHandle: '', // Assuming userHandle needs to be provided separately
          clientDataJSON: clientDataJSON,
        ),
        type: 'public-key',
        clientExtensionResults: clientExtensionResults,
        rawId: rawId,
        authenticatorAttachment: authenticatorAttachment,
      ),
    );
  }
}
