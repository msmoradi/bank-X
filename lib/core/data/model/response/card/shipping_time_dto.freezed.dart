// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_time_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShippingTimeDto _$ShippingTimeDtoFromJson(Map<String, dynamic> json) {
  return _ShippingTimeDto.fromJson(json);
}

/// @nodoc
mixin _$ShippingTimeDto {
  int get id => throw _privateConstructorUsedError;
  String get datetime => throw _privateConstructorUsedError;

  /// Serializes this ShippingTimeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShippingTimeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShippingTimeDtoCopyWith<ShippingTimeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingTimeDtoCopyWith<$Res> {
  factory $ShippingTimeDtoCopyWith(
          ShippingTimeDto value, $Res Function(ShippingTimeDto) then) =
      _$ShippingTimeDtoCopyWithImpl<$Res, ShippingTimeDto>;
  @useResult
  $Res call({int id, String datetime});
}

/// @nodoc
class _$ShippingTimeDtoCopyWithImpl<$Res, $Val extends ShippingTimeDto>
    implements $ShippingTimeDtoCopyWith<$Res> {
  _$ShippingTimeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShippingTimeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? datetime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShippingTimeDtoImplCopyWith<$Res>
    implements $ShippingTimeDtoCopyWith<$Res> {
  factory _$$ShippingTimeDtoImplCopyWith(_$ShippingTimeDtoImpl value,
          $Res Function(_$ShippingTimeDtoImpl) then) =
      __$$ShippingTimeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String datetime});
}

/// @nodoc
class __$$ShippingTimeDtoImplCopyWithImpl<$Res>
    extends _$ShippingTimeDtoCopyWithImpl<$Res, _$ShippingTimeDtoImpl>
    implements _$$ShippingTimeDtoImplCopyWith<$Res> {
  __$$ShippingTimeDtoImplCopyWithImpl(
      _$ShippingTimeDtoImpl _value, $Res Function(_$ShippingTimeDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShippingTimeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? datetime = null,
  }) {
    return _then(_$ShippingTimeDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShippingTimeDtoImpl implements _ShippingTimeDto {
  const _$ShippingTimeDtoImpl({required this.id, required this.datetime});

  factory _$ShippingTimeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShippingTimeDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String datetime;

  @override
  String toString() {
    return 'ShippingTimeDto(id: $id, datetime: $datetime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingTimeDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, datetime);

  /// Create a copy of ShippingTimeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingTimeDtoImplCopyWith<_$ShippingTimeDtoImpl> get copyWith =>
      __$$ShippingTimeDtoImplCopyWithImpl<_$ShippingTimeDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShippingTimeDtoImplToJson(
      this,
    );
  }
}

abstract class _ShippingTimeDto implements ShippingTimeDto {
  const factory _ShippingTimeDto(
      {required final int id,
      required final String datetime}) = _$ShippingTimeDtoImpl;

  factory _ShippingTimeDto.fromJson(Map<String, dynamic> json) =
      _$ShippingTimeDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get datetime;

  /// Create a copy of ShippingTimeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShippingTimeDtoImplCopyWith<_$ShippingTimeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
