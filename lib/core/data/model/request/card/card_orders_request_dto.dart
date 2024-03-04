import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_orders_request_dto.freezed.dart';

part 'card_orders_request_dto.g.dart';

@freezed
class CardOrdersRequestDto with _$CardOrdersRequestDto {
  const factory CardOrdersRequestDto({
    required final int addressId,
    required final int typeId,
    required final int cardShippingTimeSlotId,
  }) = _OrdersRequestDto;

  factory CardOrdersRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CardOrdersRequestDtoFromJson(json);
}
