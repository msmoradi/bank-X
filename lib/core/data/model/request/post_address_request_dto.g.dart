// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_address_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostAddressRequestDtoImpl _$$PostAddressRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PostAddressRequestDtoImpl(
      postalCode: json['postalCode'] as String,
      address: json['address'] as String,
      region: json['region'] as String,
      street: json['street'] as String,
      plaque: json['plaque'] as String,
      floor: json['floor'] as String,
      unit: json['unit'] as String,
      houseName: json['houseName'] as String,
      cityId: (json['cityId'] as num).toInt(),
      provinceId: (json['provinceId'] as num).toInt(),
    );

Map<String, dynamic> _$$PostAddressRequestDtoImplToJson(
        _$PostAddressRequestDtoImpl instance) =>
    <String, dynamic>{
      'postalCode': instance.postalCode,
      'address': instance.address,
      'region': instance.region,
      'street': instance.street,
      'plaque': instance.plaque,
      'floor': instance.floor,
      'unit': instance.unit,
      'houseName': instance.houseName,
      'cityId': instance.cityId,
      'provinceId': instance.provinceId,
    };
