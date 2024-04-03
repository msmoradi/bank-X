part of 'add_address_bloc.dart';

abstract class AddAddressEvent extends Equatable {
  const AddAddressEvent();

  @override
  List<Object> get props => [];
}

class AddAddressSubmitted extends AddAddressEvent {
  final AddressEntity addressEntity;

  const AddAddressSubmitted(this.addressEntity);

  @override
  List<Object> get props => [];
}
