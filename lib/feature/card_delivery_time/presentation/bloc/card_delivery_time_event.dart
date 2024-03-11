part of 'card_delivery_time_bloc.dart';

abstract class CardDeliveryTimeEvent extends Equatable {
  const CardDeliveryTimeEvent();

  @override
  List<Object> get props => [];
}

class CardDeliveryTimeSubmitted extends CardDeliveryTimeEvent {
  final int addressId;
  final int typeId;
  final int cardShippingTimeSlotId;

  const CardDeliveryTimeSubmitted({
    required this.addressId,
    required this.typeId,
    required this.cardShippingTimeSlotId,
  });

  @override
  List<Object> get props => [];
}
