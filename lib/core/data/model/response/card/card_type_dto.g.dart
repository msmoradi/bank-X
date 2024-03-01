// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_type_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardTypeDtoImpl _$$CardTypeDtoImplFromJson(Map<String, dynamic> json) =>
    _$CardTypeDtoImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      color: json['color'] as String,
      imageURL: json['imageURL'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      priceLabel: json['priceLabel'] as String,
    );

Map<String, dynamic> _$$CardTypeDtoImplToJson(_$CardTypeDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'color': instance.color,
      'imageURL': instance.imageURL,
      'description': instance.description,
      'price': instance.price,
      'priceLabel': instance.priceLabel,
    };
