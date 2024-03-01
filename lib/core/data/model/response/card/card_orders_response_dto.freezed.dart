// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_orders_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CardOrdersResponseDto _$CardOrdersResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _CardOrdersResponseDto.fromJson(json);
}

/// @nodoc
mixin _$CardOrdersResponseDto {
  /// Serializes this CardOrdersResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardOrdersResponseDtoCopyWith<$Res> {
  factory $CardOrdersResponseDtoCopyWith(CardOrdersResponseDto value,
          $Res Function(CardOrdersResponseDto) then) =
      _$CardOrdersResponseDtoCopyWithImpl<$Res, CardOrdersResponseDto>;
}

/// @nodoc
class _$CardOrdersResponseDtoCopyWithImpl<$Res,
        $Val extends CardOrdersResponseDto>
    implements $CardOrdersResponseDtoCopyWith<$Res> {
  _$CardOrdersResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardOrdersResponseDto
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CardOrdersResponseDtoImplCopyWith<$Res> {
  factory _$$CardOrdersResponseDtoImplCopyWith(
          _$CardOrdersResponseDtoImpl value,
          $Res Function(_$CardOrdersResponseDtoImpl) then) =
      __$$CardOrdersResponseDtoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CardOrdersResponseDtoImplCopyWithImpl<$Res>
    extends _$CardOrdersResponseDtoCopyWithImpl<$Res,
        _$CardOrdersResponseDtoImpl>
    implements _$$CardOrdersResponseDtoImplCopyWith<$Res> {
  __$$CardOrdersResponseDtoImplCopyWithImpl(_$CardOrdersResponseDtoImpl _value,
      $Res Function(_$CardOrdersResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardOrdersResponseDto
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$CardOrdersResponseDtoImpl implements _CardOrdersResponseDto {
  const _$CardOrdersResponseDtoImpl();

  factory _$CardOrdersResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardOrdersResponseDtoImplFromJson(json);

  @override
  String toString() {
    return 'CardOrdersResponseDto()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardOrdersResponseDtoImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$CardOrdersResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _CardOrdersResponseDto implements CardOrdersResponseDto {
  const factory _CardOrdersResponseDto() = _$CardOrdersResponseDtoImpl;

  factory _CardOrdersResponseDto.fromJson(Map<String, dynamic> json) =
      _$CardOrdersResponseDtoImpl.fromJson;
}
