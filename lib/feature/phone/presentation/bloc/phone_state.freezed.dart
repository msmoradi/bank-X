// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PhoneState {
  PhoneStatus get status => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  int get expiresIn => throw _privateConstructorUsedError;
  int get codeLength => throw _privateConstructorUsedError;
  bool get needReferralCode => throw _privateConstructorUsedError;

  /// Create a copy of PhoneState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhoneStateCopyWith<PhoneState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneStateCopyWith<$Res> {
  factory $PhoneStateCopyWith(
          PhoneState value, $Res Function(PhoneState) then) =
      _$PhoneStateCopyWithImpl<$Res, PhoneState>;
  @useResult
  $Res call(
      {PhoneStatus status,
      String errorMessage,
      String phoneNumber,
      int expiresIn,
      int codeLength,
      bool needReferralCode});
}

/// @nodoc
class _$PhoneStateCopyWithImpl<$Res, $Val extends PhoneState>
    implements $PhoneStateCopyWith<$Res> {
  _$PhoneStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhoneState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
    Object? phoneNumber = null,
    Object? expiresIn = null,
    Object? codeLength = null,
    Object? needReferralCode = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PhoneStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      codeLength: null == codeLength
          ? _value.codeLength
          : codeLength // ignore: cast_nullable_to_non_nullable
              as int,
      needReferralCode: null == needReferralCode
          ? _value.needReferralCode
          : needReferralCode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhoneStateImplCopyWith<$Res>
    implements $PhoneStateCopyWith<$Res> {
  factory _$$PhoneStateImplCopyWith(
          _$PhoneStateImpl value, $Res Function(_$PhoneStateImpl) then) =
      __$$PhoneStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PhoneStatus status,
      String errorMessage,
      String phoneNumber,
      int expiresIn,
      int codeLength,
      bool needReferralCode});
}

/// @nodoc
class __$$PhoneStateImplCopyWithImpl<$Res>
    extends _$PhoneStateCopyWithImpl<$Res, _$PhoneStateImpl>
    implements _$$PhoneStateImplCopyWith<$Res> {
  __$$PhoneStateImplCopyWithImpl(
      _$PhoneStateImpl _value, $Res Function(_$PhoneStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhoneState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
    Object? phoneNumber = null,
    Object? expiresIn = null,
    Object? codeLength = null,
    Object? needReferralCode = null,
  }) {
    return _then(_$PhoneStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PhoneStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      codeLength: null == codeLength
          ? _value.codeLength
          : codeLength // ignore: cast_nullable_to_non_nullable
              as int,
      needReferralCode: null == needReferralCode
          ? _value.needReferralCode
          : needReferralCode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PhoneStateImpl implements _PhoneState {
  const _$PhoneStateImpl(
      {this.status = PhoneStatus.initial,
      this.errorMessage = '',
      this.phoneNumber = '',
      this.expiresIn = 0,
      this.codeLength = 0,
      this.needReferralCode = false});

  @override
  @JsonKey()
  final PhoneStatus status;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final int expiresIn;
  @override
  @JsonKey()
  final int codeLength;
  @override
  @JsonKey()
  final bool needReferralCode;

  @override
  String toString() {
    return 'PhoneState(status: $status, errorMessage: $errorMessage, phoneNumber: $phoneNumber, expiresIn: $expiresIn, codeLength: $codeLength, needReferralCode: $needReferralCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.codeLength, codeLength) ||
                other.codeLength == codeLength) &&
            (identical(other.needReferralCode, needReferralCode) ||
                other.needReferralCode == needReferralCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, errorMessage,
      phoneNumber, expiresIn, codeLength, needReferralCode);

  /// Create a copy of PhoneState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneStateImplCopyWith<_$PhoneStateImpl> get copyWith =>
      __$$PhoneStateImplCopyWithImpl<_$PhoneStateImpl>(this, _$identity);
}

abstract class _PhoneState implements PhoneState {
  const factory _PhoneState(
      {final PhoneStatus status,
      final String errorMessage,
      final String phoneNumber,
      final int expiresIn,
      final int codeLength,
      final bool needReferralCode}) = _$PhoneStateImpl;

  @override
  PhoneStatus get status;
  @override
  String get errorMessage;
  @override
  String get phoneNumber;
  @override
  int get expiresIn;
  @override
  int get codeLength;
  @override
  bool get needReferralCode;

  /// Create a copy of PhoneState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhoneStateImplCopyWith<_$PhoneStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
