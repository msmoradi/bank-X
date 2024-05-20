import 'package:banx/core/domain/entities/entity.dart';

class ShippingTimeEntity extends Entity {
  final int id;
  final String datetime;

  ShippingTimeEntity({
    required this.id,
    required this.datetime,
  });
}
