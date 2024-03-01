// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_type_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CardTypeDto _$CardTypeDtoFromJson(Map<String, dynamic> json) {
  return _CardTypeDto.fromJson(json);
}

/// @nodoc
mixin _$CardTypeDto {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get imageURL => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get priceLabel => throw _privateConstructorUsedError;

  /// Serializes this CardTypeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CardTypeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CardTypeDtoCopyWith<CardTypeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardTypeDtoCopyWith<$Res> {
  factory $CardTypeDtoCopyWith(
          CardTypeDto value, $Res Function(CardTypeDto) then) =
      _$CardTypeDtoCopyWithImpl<$Res, CardTypeDto>;
  @useResult
  $Res call(
      {int id,
      String title,
      String color,
      String imageURL,
      String description,
      double price,
      String priceLabel});
}

/// @nodoc
class _$CardTypeDtoCopyWithImpl<$Res, $Val extends CardTypeDto>
    implements $CardTypeDtoCopyWith<$Res> {
  _$CardTypeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardTypeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? color = null,
    Object? imageURL = null,
    Object? description = null,
    Object? price = null,
    Object? priceLabel = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      priceLabel: null == priceLabel
          ? _value.priceLabel
          : priceLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardTypeDtoImplCopyWith<$Res>
    implements $CardTypeDtoCopyWith<$Res> {
  factory _$$CardTypeDtoImplCopyWith(
          _$CardTypeDtoImpl value, $Res Function(_$CardTypeDtoImpl) then) =
      __$$CardTypeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String color,
      String imageURL,
      String description,
      double price,
      String priceLabel});
}

/// @nodoc
class __$$CardTypeDtoImplCopyWithImpl<$Res>
    extends _$CardTypeDtoCopyWithImpl<$Res, _$CardTypeDtoImpl>
    implements _$$CardTypeDtoImplCopyWith<$Res> {
  __$$CardTypeDtoImplCopyWithImpl(
      _$CardTypeDtoImpl _value, $Res Function(_$CardTypeDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardTypeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? color = null,
    Object? imageURL = null,
    Object? description = null,
    Object? price = null,
    Object? priceLabel = null,
  }) {
    return _then(_$CardTypeDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      priceLabel: null == priceLabel
          ? _value.priceLabel
          : priceLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardTypeDtoImpl implements _CardTypeDto {
  const _$CardTypeDtoImpl(
      {required this.id,
      required this.title,
      required this.color,
      required this.imageURL,
      required this.description,
      required this.price,
      required this.priceLabel});

  factory _$CardTypeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardTypeDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String color;
  @override
  final String imageURL;
  @override
  final String description;
  @override
  final double price;
  @override
  final String priceLabel;

  @override
  String toString() {
    return 'CardTypeDto(id: $id, title: $title, color: $color, imageURL: $imageURL, description: $description, price: $price, priceLabel: $priceLabel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardTypeDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceLabel, priceLabel) ||
                other.priceLabel == priceLabel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, color, imageURL, description, price, priceLabel);

  /// Create a copy of CardTypeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardTypeDtoImplCopyWith<_$CardTypeDtoImpl> get copyWith =>
      __$$CardTypeDtoImplCopyWithImpl<_$CardTypeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardTypeDtoImplToJson(
      this,
    );
  }
}

abstract class _CardTypeDto implements CardTypeDto {
  const factory _CardTypeDto(
      {required final int id,
      required final String title,
      required final String color,
      required final String imageURL,
      required final String description,
      required final double price,
      required final String priceLabel}) = _$CardTypeDtoImpl;

  factory _CardTypeDto.fromJson(Map<String, dynamic> json) =
      _$CardTypeDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get color;
  @override
  String get imageURL;
  @override
  String get description;
  @override
  double get price;
  @override
  String get priceLabel;

  /// Create a copy of CardTypeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardTypeDtoImplCopyWith<_$CardTypeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
