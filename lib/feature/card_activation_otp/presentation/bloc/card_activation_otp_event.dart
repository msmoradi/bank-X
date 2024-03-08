part of 'card_activation_otp_bloc.dart';

abstract class CardActivationOtpEvent extends Equatable {
  const CardActivationOtpEvent();

  @override
  List<Object> get props => [];
}

class CardActivationOtpSubmitted extends CardActivationOtpEvent {
  final String otp;
  final String phoneNumber;
  final int codeLength;

  const CardActivationOtpSubmitted({
    required this.phoneNumber,
    required this.otp,
    required this.codeLength,
  });

  @override
  List<Object> get props => [otp];
}

class ResendCode extends CardActivationOtpEvent {
  final String phoneNumber;

  const ResendCode({required this.phoneNumber});

  @override
  List<Object> get props => [phoneNumber];
}
