import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_type_dto.freezed.dart';
part 'card_type_dto.g.dart';

@freezed
class CardTypeDto with _$CardTypeDto {
  const factory CardTypeDto({
    required int id,
    required String title,
    required String color,
    required String imageURL,
    required String description,
    required double price,
    required String priceLabel,
  }) = _CardTypeDto;

  factory CardTypeDto.fromJson(Map<String, dynamic> json) =>
      _$CardTypeDtoFromJson(json);
}