// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_orders_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrdersRequestDtoImpl _$$OrdersRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$OrdersRequestDtoImpl(
      addressId: (json['addressId'] as num).toInt(),
      typeId: (json['typeId'] as num).toInt(),
      cardShippingTimeSlotId: (json['cardShippingTimeSlotId'] as num).toInt(),
    );

Map<String, dynamic> _$$OrdersRequestDtoImplToJson(
        _$OrdersRequestDtoImpl instance) =>
    <String, dynamic>{
      'addressId': instance.addressId,
      'typeId': instance.typeId,
      'cardShippingTimeSlotId': instance.cardShippingTimeSlotId,
    };
