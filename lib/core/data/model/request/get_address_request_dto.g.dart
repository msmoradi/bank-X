// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_address_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAddressRequestDtoImpl _$$GetAddressRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAddressRequestDtoImpl(
      page: (json['page'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      sort: (json['sort'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$GetAddressRequestDtoImplToJson(
        _$GetAddressRequestDtoImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
      'sort': instance.sort,
    };
