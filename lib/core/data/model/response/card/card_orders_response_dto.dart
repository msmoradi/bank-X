import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_orders_response_dto.freezed.dart';
part 'card_orders_response_dto.g.dart';

@freezed
class CardOrdersResponseDto with _$CardOrdersResponseDto {
  const factory CardOrdersResponseDto() = _CardOrdersResponseDto;

  factory CardOrdersResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CardOrdersResponseDtoFromJson(json);

  factory CardOrdersResponseDto.empty() {
    return const CardOrdersResponseDto();
  }
}
