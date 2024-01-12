part of 'phone_bloc.dart';

abstract class PhoneEvent extends Equatable {
  const PhoneEvent();

  @override
  List<Object> get props => [];
}

class PhoneSubmitted extends PhoneEvent {
  final String phoneNumber;

  const PhoneSubmitted(this.phoneNumber);

  @override
  List<Object> get props => [phoneNumber];
}
