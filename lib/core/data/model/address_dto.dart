import 'package:banx/core/data/model/city_dto.dart';
import 'package:banx/core/data/model/province_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_dto.freezed.dart';
part 'address_dto.g.dart';

@freezed
class AddressDto with _$AddressDto {
  const factory AddressDto({
    int? id,
    int? accountId,
    required String postalCode,
    required String address,
    required String region,
    required String street,
    required String plaque,
    required String floor,
    required String unit,
    required String houseName,
    required CityDto city,
    required ProvinceDto province,
  }) = _AddressDto;

  factory AddressDto.fromJson(Map<String, dynamic> json) => _$AddressDtoFromJson(json);
}
