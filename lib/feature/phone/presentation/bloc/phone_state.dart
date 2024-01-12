import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_state.freezed.dart';

enum PhoneStatus { initial, failure, loading, verifyOtp, identity }

@freezed
class PhoneState with _$PhoneState {

  const factory PhoneState({
    @Default(PhoneStatus.initial) PhoneStatus status,
    @Default('') String errorMessage,
    @Default('') String phoneNumber,
    @Default(0) int expiresIn,
    @Default(0) int codeLength,
    @Default(false) bool needReferralCode,
  }) = _PhoneState;
}
