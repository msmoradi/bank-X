part of 'check_postal_code_bloc.dart';

@immutable
abstract class CheckPostalCodeState extends Equatable {
  const CheckPostalCodeState();
}

class CheckPostalCodeFailure extends CheckPostalCodeState {
  final String message;

  const CheckPostalCodeFailure(this.message);

  @override
  List<Object?> get props => [];
}

class CheckPostalCodeInProgress extends CheckPostalCodeState {
  @override
  List<Object?> get props => [];
}

class CheckPostalCodeValidated extends CheckPostalCodeState {
  @override
  List<Object?> get props => [];
}

class AddAddress extends CheckPostalCodeState {
  final AddressEntity address;

  const AddAddress({required this.address});

  @override
  List<Object?> get props => [];
}
