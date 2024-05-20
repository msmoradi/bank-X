import 'package:banx/core/domain/entities/entity.dart';

class CardDeliveryEntity extends Entity {
  final CardDeliveryStatusEntity cardOrder;
  final CardDeliveryStatusEntity cardIssuance;
  final CardDeliveryStatusEntity cardDelivery;

  CardDeliveryEntity({
    required this.cardOrder,
    required this.cardIssuance,
    required this.cardDelivery,
  });
}

class CardDeliveryStatusEntity extends Entity {
  final String title;
  final String subtitle;
  final bool isPassed;

  CardDeliveryStatusEntity({
    required this.title,
    required this.subtitle,
    required this.isPassed,
  });
}
