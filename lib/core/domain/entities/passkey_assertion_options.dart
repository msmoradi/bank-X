// lib/domain/entities/passkey_assertion_options.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'passkey_assertion_options.freezed.dart';
part 'passkey_assertion_options.g.dart';

@freezed
class PasskeyAssertionOptions with _$PasskeyAssertionOptions {
  const factory PasskeyAssertionOptions({
    required String requestId,
    required PublicKeyAssertionOptions publicKey,
    String? errorMessage,
  }) = _PasskeyAssertionOptions;

  factory PasskeyAssertionOptions.fromJson(Map<String, dynamic> json) =>
      _$PasskeyAssertionOptionsFromJson(json);
}

@freezed
class PublicKeyAssertionOptions with _$PublicKeyAssertionOptions {
  const factory PublicKeyAssertionOptions({
    required String challenge,
    required int timeout,
    required String rpId,
    required List<AllowCredential> allowCredentials,
    required String userVerification,
  }) = _PublicKeyAssertionOptions;

  factory PublicKeyAssertionOptions.fromJson(Map<String, dynamic> json) =>
      _$PublicKeyAssertionOptionsFromJson(json);
}

@freezed
class AllowCredential with _$AllowCredential {
  const factory AllowCredential({
    required String id,
    required String type,
  }) = _AllowCredential;

  factory AllowCredential.fromJson(Map<String, dynamic> json) =>
      _$AllowCredentialFromJson(json);
}
