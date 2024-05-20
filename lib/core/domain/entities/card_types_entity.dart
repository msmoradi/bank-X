import 'package:banx/core/domain/entities/entity.dart';

class CardTypesResponseEntity extends Entity {
  final List<CardTypeEntity> cardTypes;

  CardTypesResponseEntity({
    required this.cardTypes,
  });
}

class CardTypeEntity {
  final int id;
  final String title;
  final String color;
  final String imageURL;
  final String description;
  final double price;
  final String priceLabel;

  CardTypeEntity({
    required this.id,
    required this.title,
    required this.color,
    required this.imageURL,
    required this.description,
    required this.price,
    required this.priceLabel,
  });
}
