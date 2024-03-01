// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_shipping_time_slots_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardShippingTimeSlotsResponseDtoImpl
    _$$CardShippingTimeSlotsResponseDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$CardShippingTimeSlotsResponseDtoImpl(
          cardShippingTimeSlots: (json['cardShippingTimeSlots']
                  as List<dynamic>)
              .map((e) => ShippingTimeDto.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$CardShippingTimeSlotsResponseDtoImplToJson(
        _$CardShippingTimeSlotsResponseDtoImpl instance) =>
    <String, dynamic>{
      'cardShippingTimeSlots': instance.cardShippingTimeSlots,
    };
