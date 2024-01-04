// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_otp_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendOtpResponseDto _$SendOtpResponseDtoFromJson(Map<String, dynamic> json) {
  return _SendOtpResponseDto.fromJson(json);
}

/// @nodoc
mixin _$SendOtpResponseDto {
  bool get needSignup => throw _privateConstructorUsedError;
  bool get needReferralCode => throw _privateConstructorUsedError;
  int? get expiresIn => throw _privateConstructorUsedError;
  int? get codeLength => throw _privateConstructorUsedError;

  /// Serializes this SendOtpResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendOtpResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendOtpResponseDtoCopyWith<SendOtpResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendOtpResponseDtoCopyWith<$Res> {
  factory $SendOtpResponseDtoCopyWith(
          SendOtpResponseDto value, $Res Function(SendOtpResponseDto) then) =
      _$SendOtpResponseDtoCopyWithImpl<$Res, SendOtpResponseDto>;
  @useResult
  $Res call(
      {bool needSignup,
      bool needReferralCode,
      int? expiresIn,
      int? codeLength});
}

/// @nodoc
class _$SendOtpResponseDtoCopyWithImpl<$Res, $Val extends SendOtpResponseDto>
    implements $SendOtpResponseDtoCopyWith<$Res> {
  _$SendOtpResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendOtpResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? needSignup = null,
    Object? needReferralCode = null,
    Object? expiresIn = freezed,
    Object? codeLength = freezed,
  }) {
    return _then(_value.copyWith(
      needSignup: null == needSignup
          ? _value.needSignup
          : needSignup // ignore: cast_nullable_to_non_nullable
              as bool,
      needReferralCode: null == needReferralCode
          ? _value.needReferralCode
          : needReferralCode // ignore: cast_nullable_to_non_nullable
              as bool,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int?,
      codeLength: freezed == codeLength
          ? _value.codeLength
          : codeLength // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendOtpResponseDtoImplCopyWith<$Res>
    implements $SendOtpResponseDtoCopyWith<$Res> {
  factory _$$SendOtpResponseDtoImplCopyWith(_$SendOtpResponseDtoImpl value,
          $Res Function(_$SendOtpResponseDtoImpl) then) =
      __$$SendOtpResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool needSignup,
      bool needReferralCode,
      int? expiresIn,
      int? codeLength});
}

/// @nodoc
class __$$SendOtpResponseDtoImplCopyWithImpl<$Res>
    extends _$SendOtpResponseDtoCopyWithImpl<$Res, _$SendOtpResponseDtoImpl>
    implements _$$SendOtpResponseDtoImplCopyWith<$Res> {
  __$$SendOtpResponseDtoImplCopyWithImpl(_$SendOtpResponseDtoImpl _value,
      $Res Function(_$SendOtpResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendOtpResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? needSignup = null,
    Object? needReferralCode = null,
    Object? expiresIn = freezed,
    Object? codeLength = freezed,
  }) {
    return _then(_$SendOtpResponseDtoImpl(
      needSignup: null == needSignup
          ? _value.needSignup
          : needSignup // ignore: cast_nullable_to_non_nullable
              as bool,
      needReferralCode: null == needReferralCode
          ? _value.needReferralCode
          : needReferralCode // ignore: cast_nullable_to_non_nullable
              as bool,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int?,
      codeLength: freezed == codeLength
          ? _value.codeLength
          : codeLength // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendOtpResponseDtoImpl implements _SendOtpResponseDto {
  const _$SendOtpResponseDtoImpl(
      {required this.needSignup,
      required this.needReferralCode,
      required this.expiresIn,
      required this.codeLength});

  factory _$SendOtpResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendOtpResponseDtoImplFromJson(json);

  @override
  final bool needSignup;
  @override
  final bool needReferralCode;
  @override
  final int? expiresIn;
  @override
  final int? codeLength;

  @override
  String toString() {
    return 'SendOtpResponseDto(needSignup: $needSignup, needReferralCode: $needReferralCode, expiresIn: $expiresIn, codeLength: $codeLength)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpResponseDtoImpl &&
            (identical(other.needSignup, needSignup) ||
                other.needSignup == needSignup) &&
            (identical(other.needReferralCode, needReferralCode) ||
                other.needReferralCode == needReferralCode) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.codeLength, codeLength) ||
                other.codeLength == codeLength));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, needSignup, needReferralCode, expiresIn, codeLength);

  /// Create a copy of SendOtpResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpResponseDtoImplCopyWith<_$SendOtpResponseDtoImpl> get copyWith =>
      __$$SendOtpResponseDtoImplCopyWithImpl<_$SendOtpResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendOtpResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _SendOtpResponseDto implements SendOtpResponseDto {
  const factory _SendOtpResponseDto(
      {required final bool needSignup,
      required final bool needReferralCode,
      required final int? expiresIn,
      required final int? codeLength}) = _$SendOtpResponseDtoImpl;

  factory _SendOtpResponseDto.fromJson(Map<String, dynamic> json) =
      _$SendOtpResponseDtoImpl.fromJson;

  @override
  bool get needSignup;
  @override
  bool get needReferralCode;
  @override
  int? get expiresIn;
  @override
  int? get codeLength;

  /// Create a copy of SendOtpResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendOtpResponseDtoImplCopyWith<_$SendOtpResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
