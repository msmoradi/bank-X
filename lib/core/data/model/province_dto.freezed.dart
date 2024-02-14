// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'province_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProvinceDto _$ProvinceDtoFromJson(Map<String, dynamic> json) {
  return _ProvinceDto.fromJson(json);
}

/// @nodoc
mixin _$ProvinceDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this ProvinceDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProvinceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProvinceDtoCopyWith<ProvinceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceDtoCopyWith<$Res> {
  factory $ProvinceDtoCopyWith(
          ProvinceDto value, $Res Function(ProvinceDto) then) =
      _$ProvinceDtoCopyWithImpl<$Res, ProvinceDto>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$ProvinceDtoCopyWithImpl<$Res, $Val extends ProvinceDto>
    implements $ProvinceDtoCopyWith<$Res> {
  _$ProvinceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProvinceDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProvinceDtoImplCopyWith<$Res>
    implements $ProvinceDtoCopyWith<$Res> {
  factory _$$ProvinceDtoImplCopyWith(
          _$ProvinceDtoImpl value, $Res Function(_$ProvinceDtoImpl) then) =
      __$$ProvinceDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$ProvinceDtoImplCopyWithImpl<$Res>
    extends _$ProvinceDtoCopyWithImpl<$Res, _$ProvinceDtoImpl>
    implements _$$ProvinceDtoImplCopyWith<$Res> {
  __$$ProvinceDtoImplCopyWithImpl(
      _$ProvinceDtoImpl _value, $Res Function(_$ProvinceDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProvinceDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$ProvinceDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProvinceDtoImpl implements _ProvinceDto {
  const _$ProvinceDtoImpl({required this.id, required this.name});

  factory _$ProvinceDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProvinceDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'ProvinceDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProvinceDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of ProvinceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProvinceDtoImplCopyWith<_$ProvinceDtoImpl> get copyWith =>
      __$$ProvinceDtoImplCopyWithImpl<_$ProvinceDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProvinceDtoImplToJson(
      this,
    );
  }
}

abstract class _ProvinceDto implements ProvinceDto {
  const factory _ProvinceDto(
      {required final int id, required final String name}) = _$ProvinceDtoImpl;

  factory _ProvinceDto.fromJson(Map<String, dynamic> json) =
      _$ProvinceDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of ProvinceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProvinceDtoImplCopyWith<_$ProvinceDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
