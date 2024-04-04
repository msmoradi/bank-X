part of 'select_address_bloc.dart';

@immutable
abstract class SelectAddressState extends Equatable {
  const SelectAddressState();
}

class SelectAddressFailure extends SelectAddressState {
  final String message;

  const SelectAddressFailure(this.message);

  @override
  List<Object?> get props => [];
}

class SelectAddressInProgress extends SelectAddressState {
  @override
  List<Object?> get props => [];
}

class SelectAddressValidated extends SelectAddressState {
  @override
  List<Object?> get props => [];
}

class SelectAddressSuccess extends SelectAddressState {
  final AddressEntity address;
  final List<ShippingTimeEntity> cardShippingTimeSlots;

  const SelectAddressSuccess({
    required this.address,
    required this.cardShippingTimeSlots,
  });

  @override
  List<Object?> get props => [];
}
