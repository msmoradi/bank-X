part of 'national_serial_bloc.dart';

@immutable
abstract class NationalSerialState extends Equatable {
  const NationalSerialState();
}

class NationalSerialFailure extends NationalSerialState {
  final String message;

  const NationalSerialFailure(this.message);

  @override
  List<Object?> get props => [];
}

class NationalSerialInProgress extends NationalSerialState {
  @override
  List<Object?> get props => [];
}

class NationalSerialValidated extends NationalSerialState {
  @override
  List<Object?> get props => [];
}

class NationalSerialSuccess extends NationalSerialState {
  final String address;

  const NationalSerialSuccess({required this.address});

  @override
  List<Object?> get props => [];
}
