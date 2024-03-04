// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_orders_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CardOrdersRequestDto _$CardOrdersRequestDtoFromJson(Map<String, dynamic> json) {
  return _OrdersRequestDto.fromJson(json);
}

/// @nodoc
mixin _$CardOrdersRequestDto {
  int get addressId => throw _privateConstructorUsedError;
  int get typeId => throw _privateConstructorUsedError;
  int get cardShippingTimeSlotId => throw _privateConstructorUsedError;

  /// Serializes this CardOrdersRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CardOrdersRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CardOrdersRequestDtoCopyWith<CardOrdersRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardOrdersRequestDtoCopyWith<$Res> {
  factory $CardOrdersRequestDtoCopyWith(CardOrdersRequestDto value,
          $Res Function(CardOrdersRequestDto) then) =
      _$CardOrdersRequestDtoCopyWithImpl<$Res, CardOrdersRequestDto>;
  @useResult
  $Res call({int addressId, int typeId, int cardShippingTimeSlotId});
}

/// @nodoc
class _$CardOrdersRequestDtoCopyWithImpl<$Res,
        $Val extends CardOrdersRequestDto>
    implements $CardOrdersRequestDtoCopyWith<$Res> {
  _$CardOrdersRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardOrdersRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressId = null,
    Object? typeId = null,
    Object? cardShippingTimeSlotId = null,
  }) {
    return _then(_value.copyWith(
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
      typeId: null == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int,
      cardShippingTimeSlotId: null == cardShippingTimeSlotId
          ? _value.cardShippingTimeSlotId
          : cardShippingTimeSlotId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersRequestDtoImplCopyWith<$Res>
    implements $CardOrdersRequestDtoCopyWith<$Res> {
  factory _$$OrdersRequestDtoImplCopyWith(_$OrdersRequestDtoImpl value,
          $Res Function(_$OrdersRequestDtoImpl) then) =
      __$$OrdersRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int addressId, int typeId, int cardShippingTimeSlotId});
}

/// @nodoc
class __$$OrdersRequestDtoImplCopyWithImpl<$Res>
    extends _$CardOrdersRequestDtoCopyWithImpl<$Res, _$OrdersRequestDtoImpl>
    implements _$$OrdersRequestDtoImplCopyWith<$Res> {
  __$$OrdersRequestDtoImplCopyWithImpl(_$OrdersRequestDtoImpl _value,
      $Res Function(_$OrdersRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardOrdersRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressId = null,
    Object? typeId = null,
    Object? cardShippingTimeSlotId = null,
  }) {
    return _then(_$OrdersRequestDtoImpl(
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
      typeId: null == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int,
      cardShippingTimeSlotId: null == cardShippingTimeSlotId
          ? _value.cardShippingTimeSlotId
          : cardShippingTimeSlotId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersRequestDtoImpl implements _OrdersRequestDto {
  const _$OrdersRequestDtoImpl(
      {required this.addressId,
      required this.typeId,
      required this.cardShippingTimeSlotId});

  factory _$OrdersRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersRequestDtoImplFromJson(json);

  @override
  final int addressId;
  @override
  final int typeId;
  @override
  final int cardShippingTimeSlotId;

  @override
  String toString() {
    return 'CardOrdersRequestDto(addressId: $addressId, typeId: $typeId, cardShippingTimeSlotId: $cardShippingTimeSlotId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersRequestDtoImpl &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            (identical(other.cardShippingTimeSlotId, cardShippingTimeSlotId) ||
                other.cardShippingTimeSlotId == cardShippingTimeSlotId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, addressId, typeId, cardShippingTimeSlotId);

  /// Create a copy of CardOrdersRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersRequestDtoImplCopyWith<_$OrdersRequestDtoImpl> get copyWith =>
      __$$OrdersRequestDtoImplCopyWithImpl<_$OrdersRequestDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _OrdersRequestDto implements CardOrdersRequestDto {
  const factory _OrdersRequestDto(
      {required final int addressId,
      required final int typeId,
      required final int cardShippingTimeSlotId}) = _$OrdersRequestDtoImpl;

  factory _OrdersRequestDto.fromJson(Map<String, dynamic> json) =
      _$OrdersRequestDtoImpl.fromJson;

  @override
  int get addressId;
  @override
  int get typeId;
  @override
  int get cardShippingTimeSlotId;

  /// Create a copy of CardOrdersRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrdersRequestDtoImplCopyWith<_$OrdersRequestDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
