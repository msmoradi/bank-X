// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpResponseDto _$SignUpResponseDtoFromJson(Map<String, dynamic> json) {
  return _SignUpResponseDto.fromJson(json);
}

/// @nodoc
mixin _$SignUpResponseDto {
  int get expiresIn => throw _privateConstructorUsedError;
  int get codeLength => throw _privateConstructorUsedError;

  /// Serializes this SignUpResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignUpResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpResponseDtoCopyWith<SignUpResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpResponseDtoCopyWith<$Res> {
  factory $SignUpResponseDtoCopyWith(
          SignUpResponseDto value, $Res Function(SignUpResponseDto) then) =
      _$SignUpResponseDtoCopyWithImpl<$Res, SignUpResponseDto>;
  @useResult
  $Res call({int expiresIn, int codeLength});
}

/// @nodoc
class _$SignUpResponseDtoCopyWithImpl<$Res, $Val extends SignUpResponseDto>
    implements $SignUpResponseDtoCopyWith<$Res> {
  _$SignUpResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expiresIn = null,
    Object? codeLength = null,
  }) {
    return _then(_value.copyWith(
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      codeLength: null == codeLength
          ? _value.codeLength
          : codeLength // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpResponseDtoImplCopyWith<$Res>
    implements $SignUpResponseDtoCopyWith<$Res> {
  factory _$$SignUpResponseDtoImplCopyWith(_$SignUpResponseDtoImpl value,
          $Res Function(_$SignUpResponseDtoImpl) then) =
      __$$SignUpResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int expiresIn, int codeLength});
}

/// @nodoc
class __$$SignUpResponseDtoImplCopyWithImpl<$Res>
    extends _$SignUpResponseDtoCopyWithImpl<$Res, _$SignUpResponseDtoImpl>
    implements _$$SignUpResponseDtoImplCopyWith<$Res> {
  __$$SignUpResponseDtoImplCopyWithImpl(_$SignUpResponseDtoImpl _value,
      $Res Function(_$SignUpResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expiresIn = null,
    Object? codeLength = null,
  }) {
    return _then(_$SignUpResponseDtoImpl(
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      codeLength: null == codeLength
          ? _value.codeLength
          : codeLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpResponseDtoImpl implements _SignUpResponseDto {
  const _$SignUpResponseDtoImpl(
      {required this.expiresIn, required this.codeLength});

  factory _$SignUpResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpResponseDtoImplFromJson(json);

  @override
  final int expiresIn;
  @override
  final int codeLength;

  @override
  String toString() {
    return 'SignUpResponseDto(expiresIn: $expiresIn, codeLength: $codeLength)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpResponseDtoImpl &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.codeLength, codeLength) ||
                other.codeLength == codeLength));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, expiresIn, codeLength);

  /// Create a copy of SignUpResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpResponseDtoImplCopyWith<_$SignUpResponseDtoImpl> get copyWith =>
      __$$SignUpResponseDtoImplCopyWithImpl<_$SignUpResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _SignUpResponseDto implements SignUpResponseDto {
  const factory _SignUpResponseDto(
      {required final int expiresIn,
      required final int codeLength}) = _$SignUpResponseDtoImpl;

  factory _SignUpResponseDto.fromJson(Map<String, dynamic> json) =
      _$SignUpResponseDtoImpl.fromJson;

  @override
  int get expiresIn;
  @override
  int get codeLength;

  /// Create a copy of SignUpResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpResponseDtoImplCopyWith<_$SignUpResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
