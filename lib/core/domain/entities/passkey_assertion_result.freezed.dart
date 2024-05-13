// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passkey_assertion_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PasskeyAssertionResult _$PasskeyAssertionResultFromJson(
    Map<String, dynamic> json) {
  return _PasskeyAssertionResult.fromJson(json);
}

/// @nodoc
mixin _$PasskeyAssertionResult {
  String get status => throw _privateConstructorUsedError;
  String get loa => throw _privateConstructorUsedError;

  /// Serializes this PasskeyAssertionResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasskeyAssertionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasskeyAssertionResultCopyWith<PasskeyAssertionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasskeyAssertionResultCopyWith<$Res> {
  factory $PasskeyAssertionResultCopyWith(PasskeyAssertionResult value,
          $Res Function(PasskeyAssertionResult) then) =
      _$PasskeyAssertionResultCopyWithImpl<$Res, PasskeyAssertionResult>;
  @useResult
  $Res call({String status, String loa});
}

/// @nodoc
class _$PasskeyAssertionResultCopyWithImpl<$Res,
        $Val extends PasskeyAssertionResult>
    implements $PasskeyAssertionResultCopyWith<$Res> {
  _$PasskeyAssertionResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasskeyAssertionResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? loa = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      loa: null == loa
          ? _value.loa
          : loa // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasskeyAssertionResultImplCopyWith<$Res>
    implements $PasskeyAssertionResultCopyWith<$Res> {
  factory _$$PasskeyAssertionResultImplCopyWith(
          _$PasskeyAssertionResultImpl value,
          $Res Function(_$PasskeyAssertionResultImpl) then) =
      __$$PasskeyAssertionResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String loa});
}

/// @nodoc
class __$$PasskeyAssertionResultImplCopyWithImpl<$Res>
    extends _$PasskeyAssertionResultCopyWithImpl<$Res,
        _$PasskeyAssertionResultImpl>
    implements _$$PasskeyAssertionResultImplCopyWith<$Res> {
  __$$PasskeyAssertionResultImplCopyWithImpl(
      _$PasskeyAssertionResultImpl _value,
      $Res Function(_$PasskeyAssertionResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasskeyAssertionResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? loa = null,
  }) {
    return _then(_$PasskeyAssertionResultImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      loa: null == loa
          ? _value.loa
          : loa // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasskeyAssertionResultImpl implements _PasskeyAssertionResult {
  const _$PasskeyAssertionResultImpl({required this.status, required this.loa});

  factory _$PasskeyAssertionResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasskeyAssertionResultImplFromJson(json);

  @override
  final String status;
  @override
  final String loa;

  @override
  String toString() {
    return 'PasskeyAssertionResult(status: $status, loa: $loa)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasskeyAssertionResultImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.loa, loa) || other.loa == loa));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, loa);

  /// Create a copy of PasskeyAssertionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasskeyAssertionResultImplCopyWith<_$PasskeyAssertionResultImpl>
      get copyWith => __$$PasskeyAssertionResultImplCopyWithImpl<
          _$PasskeyAssertionResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasskeyAssertionResultImplToJson(
      this,
    );
  }
}

abstract class _PasskeyAssertionResult implements PasskeyAssertionResult {
  const factory _PasskeyAssertionResult(
      {required final String status,
      required final String loa}) = _$PasskeyAssertionResultImpl;

  factory _PasskeyAssertionResult.fromJson(Map<String, dynamic> json) =
      _$PasskeyAssertionResultImpl.fromJson;

  @override
  String get status;
  @override
  String get loa;

  /// Create a copy of PasskeyAssertionResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasskeyAssertionResultImplCopyWith<_$PasskeyAssertionResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
