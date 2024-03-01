// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_types_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardTypesResponseDtoImpl _$$CardTypesResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CardTypesResponseDtoImpl(
      cardTypes: (json['cardTypes'] as List<dynamic>)
          .map((e) => CardTypeDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CardTypesResponseDtoImplToJson(
        _$CardTypesResponseDtoImpl instance) =>
    <String, dynamic>{
      'cardTypes': instance.cardTypes,
    };
