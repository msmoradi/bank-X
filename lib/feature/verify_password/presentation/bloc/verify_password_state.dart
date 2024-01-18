import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_password_state.freezed.dart';

enum VerifyPasswordStatus { initial, failure, loading, deepLinkLanding }

@freezed
class VerifyPasswordState with _$VerifyPasswordState {
  const factory VerifyPasswordState({
    @Default(VerifyPasswordStatus.initial) VerifyPasswordStatus status,
    @Default('') String errorMessage,
    @Default('') String deeplink,
    @Default(false) bool showBiometric,
    @Default('') String name,
    @Default('') String photoUrl,
  }) = _VerifyPasswordState;
}
