part of 'check_postal_code_bloc.dart';

abstract class CheckPostalCodeEvent extends Equatable {
  const CheckPostalCodeEvent();

  @override
  List<Object> get props => [];
}

class CheckPostalCodeSubmitted extends CheckPostalCodeEvent {
  final String postalCode;

  const CheckPostalCodeSubmitted(this.postalCode);

  @override
  List<Object> get props => [];
}
