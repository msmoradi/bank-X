import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_time_dto.freezed.dart';
part 'shipping_time_dto.g.dart';

@freezed
class ShippingTimeDto with _$ShippingTimeDto {
  const factory ShippingTimeDto({
    required int id,
    required String datetime,
  }) = _ShippingTimeDto;

  factory ShippingTimeDto.fromJson(Map<String, dynamic> json) =>
      _$ShippingTimeDtoFromJson(json);
}
