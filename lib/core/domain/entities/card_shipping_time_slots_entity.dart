import 'package:banx/core/domain/entities/entity.dart';
import 'package:banx/core/domain/entities/shipping_time_entity.dart';

class CardShippingTimeSlotsEntity extends Entity {
  final List<ShippingTimeEntity> cardShippingTimeSlots ;
  CardShippingTimeSlotsEntity({
    required this.cardShippingTimeSlots,
  });
}
