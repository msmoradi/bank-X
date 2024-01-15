part of 'verify_otp_bloc.dart';

abstract class VerifyOtpEvent extends Equatable {
  const VerifyOtpEvent();

  @override
  List<Object> get props => [];
}

class VerifyOtpSubmitted extends VerifyOtpEvent {
  final String otp;
  final String phoneNumber;
  final int codeLength;

  const VerifyOtpSubmitted({
    required this.phoneNumber,
    required this.otp,
    required this.codeLength,
  });

  @override
  List<Object> get props => [otp];
}

class ResendCode extends VerifyOtpEvent {
  final String phoneNumber;

  const ResendCode({required this.phoneNumber});

  @override
  List<Object> get props => [phoneNumber];
}
