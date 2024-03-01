import 'package:banx/core/data/model/response/card/card_type_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_types_response_dto.freezed.dart';
part 'card_types_response_dto.g.dart';

@freezed
class CardTypesResponseDto with _$CardTypesResponseDto {
  const factory CardTypesResponseDto({
    required List<CardTypeDto> cardTypes,
  }) = _CardTypesResponseDto;

  factory CardTypesResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CardTypesResponseDtoFromJson(json);

}
