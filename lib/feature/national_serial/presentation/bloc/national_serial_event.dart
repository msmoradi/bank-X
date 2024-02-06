part of 'national_serial_bloc.dart';

abstract class NationalSerialEvent extends Equatable {
  const NationalSerialEvent();

  @override
  List<Object> get props => [];
}

class CheckNationalSerialSubmitted extends NationalSerialEvent {
  final String nationalSerial;

  const CheckNationalSerialSubmitted(this.nationalSerial);

  @override
  List<Object> get props => [];
}
