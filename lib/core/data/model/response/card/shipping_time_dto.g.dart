// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_time_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShippingTimeDtoImpl _$$ShippingTimeDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ShippingTimeDtoImpl(
      id: (json['id'] as num).toInt(),
      datetime: json['datetime'] as String,
    );

Map<String, dynamic> _$$ShippingTimeDtoImplToJson(
        _$ShippingTimeDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'datetime': instance.datetime,
    };
