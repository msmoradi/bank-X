// lib/data/dto/passkey_assertion_result_response_dto.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'passkey_assertion_result_response_dto.freezed.dart';
part 'passkey_assertion_result_response_dto.g.dart';

@freezed
class PasskeyAssertionResultResponseDTO with _$PasskeyAssertionResultResponseDTO {
  const factory PasskeyAssertionResultResponseDTO({
    required String status,
    required String loa,
  }) = _PasskeyAssertionResultResponseDTO;

  factory PasskeyAssertionResultResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$PasskeyAssertionResultResponseDTOFromJson(json);
}
