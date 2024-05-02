// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routing_button_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoutingButtonDto _$RoutingButtonDtoFromJson(Map<String, dynamic> json) {
  return _RoutingButtonDto.fromJson(json);
}

/// @nodoc
mixin _$RoutingButtonDto {
  String get deeplink => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this RoutingButtonDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoutingButtonDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoutingButtonDtoCopyWith<RoutingButtonDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutingButtonDtoCopyWith<$Res> {
  factory $RoutingButtonDtoCopyWith(
          RoutingButtonDto value, $Res Function(RoutingButtonDto) then) =
      _$RoutingButtonDtoCopyWithImpl<$Res, RoutingButtonDto>;
  @useResult
  $Res call({String deeplink, String title});
}

/// @nodoc
class _$RoutingButtonDtoCopyWithImpl<$Res, $Val extends RoutingButtonDto>
    implements $RoutingButtonDtoCopyWith<$Res> {
  _$RoutingButtonDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoutingButtonDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deeplink = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      deeplink: null == deeplink
          ? _value.deeplink
          : deeplink // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoutingButtonDtoImplCopyWith<$Res>
    implements $RoutingButtonDtoCopyWith<$Res> {
  factory _$$RoutingButtonDtoImplCopyWith(_$RoutingButtonDtoImpl value,
          $Res Function(_$RoutingButtonDtoImpl) then) =
      __$$RoutingButtonDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String deeplink, String title});
}

/// @nodoc
class __$$RoutingButtonDtoImplCopyWithImpl<$Res>
    extends _$RoutingButtonDtoCopyWithImpl<$Res, _$RoutingButtonDtoImpl>
    implements _$$RoutingButtonDtoImplCopyWith<$Res> {
  __$$RoutingButtonDtoImplCopyWithImpl(_$RoutingButtonDtoImpl _value,
      $Res Function(_$RoutingButtonDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoutingButtonDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deeplink = null,
    Object? title = null,
  }) {
    return _then(_$RoutingButtonDtoImpl(
      deeplink: null == deeplink
          ? _value.deeplink
          : deeplink // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoutingButtonDtoImpl implements _RoutingButtonDto {
  const _$RoutingButtonDtoImpl({this.deeplink = '', this.title = ''});

  factory _$RoutingButtonDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoutingButtonDtoImplFromJson(json);

  @override
  @JsonKey()
  final String deeplink;
  @override
  @JsonKey()
  final String title;

  @override
  String toString() {
    return 'RoutingButtonDto(deeplink: $deeplink, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutingButtonDtoImpl &&
            (identical(other.deeplink, deeplink) ||
                other.deeplink == deeplink) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deeplink, title);

  /// Create a copy of RoutingButtonDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutingButtonDtoImplCopyWith<_$RoutingButtonDtoImpl> get copyWith =>
      __$$RoutingButtonDtoImplCopyWithImpl<_$RoutingButtonDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoutingButtonDtoImplToJson(
      this,
    );
  }
}

abstract class _RoutingButtonDto implements RoutingButtonDto {
  const factory _RoutingButtonDto({final String deeplink, final String title}) =
      _$RoutingButtonDtoImpl;

  factory _RoutingButtonDto.fromJson(Map<String, dynamic> json) =
      _$RoutingButtonDtoImpl.fromJson;

  @override
  String get deeplink;
  @override
  String get title;

  /// Create a copy of RoutingButtonDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoutingButtonDtoImplCopyWith<_$RoutingButtonDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
