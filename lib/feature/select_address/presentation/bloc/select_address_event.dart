part of 'select_address_bloc.dart';

abstract class SelectAddressEvent extends Equatable {
  const SelectAddressEvent();

  @override
  List<Object> get props => [];
}

class AddressSelected extends SelectAddressEvent {
  final AddressEntity addressEntity;

  const AddressSelected(this.addressEntity);

  @override
  List<Object> get props => [];
}
