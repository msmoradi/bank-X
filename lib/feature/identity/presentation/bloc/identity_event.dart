part of 'identity_bloc.dart';

abstract class IdentityEvent extends Equatable {
  const IdentityEvent();

  @override
  List<Object> get props => [];
}

class IdentitySubmitted extends IdentityEvent {
  final String phoneNumber;
  final String birthDate;
  final String nationalId;
  final String? referral;

  const IdentitySubmitted({
    required this.phoneNumber,
    required this.nationalId,
    required this.birthDate,
    this.referral,
  });

  @override
  List<Object> get props => [phoneNumber, birthDate, nationalId];
}
