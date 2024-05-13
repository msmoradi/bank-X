import 'package:banx/core/domain/entities/card_shipping_time_slots_entity.dart';
import 'package:banx/core/domain/entities/card_types_entity.dart';
import 'package:banx/core/domain/entities/entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';

abstract class CardRepository {
  Future<EntityWrapper<Entity>> orders({
    required int addressId,
    required int typeId,
    required int cardShippingTimeSlotId,
  });

  Future<EntityWrapper<CardTypesResponseEntity>> types();

  Future<EntityWrapper<CardShippingTimeSlotsEntity>> shippingTimeSlots();
}
