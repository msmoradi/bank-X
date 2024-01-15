import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_state.freezed.dart';

enum VerifyOtpStatus { initial, failure, loading, deepLinkLanding, otpError }

@freezed
class VerifyOtpState with _$VerifyOtpState {
  const factory VerifyOtpState({
    @Default(VerifyOtpStatus.initial) VerifyOtpStatus status,
    @Default('') String errorMessage,
    @Default('') String otpErrorMessage,
    @Default('') String deeplink,
  }) = _VerifyOtpState;
}
