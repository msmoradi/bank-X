// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ErrorDto _$ErrorDtoFromJson(Map<String, dynamic> json) {
  return _ErrorDto.fromJson(json);
}

/// @nodoc
mixin _$ErrorDto {
  String? get error => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ErrorAction? get action => throw _privateConstructorUsedError;

  /// Serializes this ErrorDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ErrorDtoCopyWith<ErrorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorDtoCopyWith<$Res> {
  factory $ErrorDtoCopyWith(ErrorDto value, $Res Function(ErrorDto) then) =
      _$ErrorDtoCopyWithImpl<$Res, ErrorDto>;
  @useResult
  $Res call({String? error, int? code, String message, ErrorAction? action});
}

/// @nodoc
class _$ErrorDtoCopyWithImpl<$Res, $Val extends ErrorDto>
    implements $ErrorDtoCopyWith<$Res> {
  _$ErrorDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? code = freezed,
    Object? message = null,
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as ErrorAction?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorDtoImplCopyWith<$Res>
    implements $ErrorDtoCopyWith<$Res> {
  factory _$$ErrorDtoImplCopyWith(
          _$ErrorDtoImpl value, $Res Function(_$ErrorDtoImpl) then) =
      __$$ErrorDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error, int? code, String message, ErrorAction? action});
}

/// @nodoc
class __$$ErrorDtoImplCopyWithImpl<$Res>
    extends _$ErrorDtoCopyWithImpl<$Res, _$ErrorDtoImpl>
    implements _$$ErrorDtoImplCopyWith<$Res> {
  __$$ErrorDtoImplCopyWithImpl(
      _$ErrorDtoImpl _value, $Res Function(_$ErrorDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? code = freezed,
    Object? message = null,
    Object? action = freezed,
  }) {
    return _then(_$ErrorDtoImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as ErrorAction?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorDtoImpl implements _ErrorDto {
  const _$ErrorDtoImpl(
      {required this.error,
      required this.code,
      required this.message,
      required this.action});

  factory _$ErrorDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorDtoImplFromJson(json);

  @override
  final String? error;
  @override
  final int? code;
  @override
  final String message;
  @override
  final ErrorAction? action;

  @override
  String toString() {
    return 'ErrorDto(error: $error, code: $code, message: $message, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorDtoImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error, code, message, action);

  /// Create a copy of ErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorDtoImplCopyWith<_$ErrorDtoImpl> get copyWith =>
      __$$ErrorDtoImplCopyWithImpl<_$ErrorDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorDtoImplToJson(
      this,
    );
  }
}

abstract class _ErrorDto implements ErrorDto {
  const factory _ErrorDto(
      {required final String? error,
      required final int? code,
      required final String message,
      required final ErrorAction? action}) = _$ErrorDtoImpl;

  factory _ErrorDto.fromJson(Map<String, dynamic> json) =
      _$ErrorDtoImpl.fromJson;

  @override
  String? get error;
  @override
  int? get code;
  @override
  String get message;
  @override
  ErrorAction? get action;

  /// Create a copy of ErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorDtoImplCopyWith<_$ErrorDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
