import 'package:banx/core/data/model/response/card/card_shipping_time_slots_response_dto.dart';
import 'package:banx/core/data/model/response/card/card_type_dto.dart';
import 'package:banx/core/data/model/response/card/card_types_response_dto.dart';
import 'package:banx/core/data/model/response/card/shipping_time_dto.dart';
import 'package:banx/core/domain/entities/card_shipping_time_slots_entity.dart';
import 'package:banx/core/domain/entities/card_types_entity.dart';
import 'package:banx/core/domain/entities/shipping_time_entity.dart';

extension CardShippingTimeSlotsResponseDtoMapper
    on CardShippingTimeSlotsResponseDto {
  CardShippingTimeSlotsEntity toEntity() {
    return CardShippingTimeSlotsEntity(
      cardShippingTimeSlots:
          cardShippingTimeSlots.map((dto) => dto.toEntity()).toList(),
    );
  }
}

extension ShippingTimeDtoMapper on ShippingTimeDto {
  ShippingTimeEntity toEntity() {
    return ShippingTimeEntity(
      id: id,
      datetime: datetime,
    );
  }
}

extension CardTypeDtoMapper on CardTypeDto {
  CardTypeEntity toEntity() {
    return CardTypeEntity(
      id: id,
      title: title,
      color: color,
      imageURL: imageURL,
      description: description,
      price: price,
      priceLabel: priceLabel,
    );
  }
}

extension CardTypesResponseDtoMapper on CardTypesResponseDto {
  CardTypesResponseEntity toEntity() {
    return CardTypesResponseEntity(
      cardTypes: cardTypes.map((dto) => dto.toEntity()).toList(),
    );
  }
}
