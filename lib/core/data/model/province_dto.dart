import 'package:freezed_annotation/freezed_annotation.dart';

part 'province_dto.freezed.dart';
part 'province_dto.g.dart';

@freezed
class ProvinceDto with _$ProvinceDto {
  const factory ProvinceDto({
    required int id,
    required String name,
  }) = _ProvinceDto;

  factory ProvinceDto.fromJson(Map<String, dynamic> json) =>
      _$ProvinceDtoFromJson(json);
}