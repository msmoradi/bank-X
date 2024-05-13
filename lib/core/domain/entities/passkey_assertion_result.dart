// lib/domain/entities/passkey_assertion_result.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'passkey_assertion_result.freezed.dart';
part 'passkey_assertion_result.g.dart';

@freezed
class PasskeyAssertionResult with _$PasskeyAssertionResult {
  const factory PasskeyAssertionResult({
    required String status,
    required String loa,
  }) = _PasskeyAssertionResult;

  factory PasskeyAssertionResult.fromJson(Map<String, dynamic> json) =>
      _$PasskeyAssertionResultFromJson(json);
}
