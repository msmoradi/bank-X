// lib/data/dto/passkey_assertion_options_request_dto.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'passkey_assertion_options_request_dto.freezed.dart';
part 'passkey_assertion_options_request_dto.g.dart';

@freezed
class PasskeyAssertionOptionsRequestDTO with _$PasskeyAssertionOptionsRequestDTO {
  const factory PasskeyAssertionOptionsRequestDTO({
    required String userName,
  }) = _PasskeyAssertionOptionsRequestDTO;

  factory PasskeyAssertionOptionsRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$PasskeyAssertionOptionsRequestDTOFromJson(json);
}
