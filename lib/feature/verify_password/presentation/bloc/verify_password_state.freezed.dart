// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerifyPasswordState {
  VerifyPasswordStatus get status => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get deeplink => throw _privateConstructorUsedError;
  bool get showBiometric => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;

  /// Create a copy of VerifyPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyPasswordStateCopyWith<VerifyPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPasswordStateCopyWith<$Res> {
  factory $VerifyPasswordStateCopyWith(
          VerifyPasswordState value, $Res Function(VerifyPasswordState) then) =
      _$VerifyPasswordStateCopyWithImpl<$Res, VerifyPasswordState>;
  @useResult
  $Res call(
      {VerifyPasswordStatus status,
      String errorMessage,
      String deeplink,
      bool showBiometric,
      String name,
      String photoUrl});
}

/// @nodoc
class _$VerifyPasswordStateCopyWithImpl<$Res, $Val extends VerifyPasswordState>
    implements $VerifyPasswordStateCopyWith<$Res> {
  _$VerifyPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
    Object? deeplink = null,
    Object? showBiometric = null,
    Object? name = null,
    Object? photoUrl = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as VerifyPasswordStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      deeplink: null == deeplink
          ? _value.deeplink
          : deeplink // ignore: cast_nullable_to_non_nullable
              as String,
      showBiometric: null == showBiometric
          ? _value.showBiometric
          : showBiometric // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyPasswordStateImplCopyWith<$Res>
    implements $VerifyPasswordStateCopyWith<$Res> {
  factory _$$VerifyPasswordStateImplCopyWith(_$VerifyPasswordStateImpl value,
          $Res Function(_$VerifyPasswordStateImpl) then) =
      __$$VerifyPasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VerifyPasswordStatus status,
      String errorMessage,
      String deeplink,
      bool showBiometric,
      String name,
      String photoUrl});
}

/// @nodoc
class __$$VerifyPasswordStateImplCopyWithImpl<$Res>
    extends _$VerifyPasswordStateCopyWithImpl<$Res, _$VerifyPasswordStateImpl>
    implements _$$VerifyPasswordStateImplCopyWith<$Res> {
  __$$VerifyPasswordStateImplCopyWithImpl(_$VerifyPasswordStateImpl _value,
      $Res Function(_$VerifyPasswordStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifyPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
    Object? deeplink = null,
    Object? showBiometric = null,
    Object? name = null,
    Object? photoUrl = null,
  }) {
    return _then(_$VerifyPasswordStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as VerifyPasswordStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      deeplink: null == deeplink
          ? _value.deeplink
          : deeplink // ignore: cast_nullable_to_non_nullable
              as String,
      showBiometric: null == showBiometric
          ? _value.showBiometric
          : showBiometric // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyPasswordStateImpl implements _VerifyPasswordState {
  const _$VerifyPasswordStateImpl(
      {this.status = VerifyPasswordStatus.initial,
      this.errorMessage = '',
      this.deeplink = '',
      this.showBiometric = false,
      this.name = '',
      this.photoUrl = ''});

  @override
  @JsonKey()
  final VerifyPasswordStatus status;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final String deeplink;
  @override
  @JsonKey()
  final bool showBiometric;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String photoUrl;

  @override
  String toString() {
    return 'VerifyPasswordState(status: $status, errorMessage: $errorMessage, deeplink: $deeplink, showBiometric: $showBiometric, name: $name, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPasswordStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.deeplink, deeplink) ||
                other.deeplink == deeplink) &&
            (identical(other.showBiometric, showBiometric) ||
                other.showBiometric == showBiometric) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, errorMessage, deeplink,
      showBiometric, name, photoUrl);

  /// Create a copy of VerifyPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyPasswordStateImplCopyWith<_$VerifyPasswordStateImpl> get copyWith =>
      __$$VerifyPasswordStateImplCopyWithImpl<_$VerifyPasswordStateImpl>(
          this, _$identity);
}

abstract class _VerifyPasswordState implements VerifyPasswordState {
  const factory _VerifyPasswordState(
      {final VerifyPasswordStatus status,
      final String errorMessage,
      final String deeplink,
      final bool showBiometric,
      final String name,
      final String photoUrl}) = _$VerifyPasswordStateImpl;

  @override
  VerifyPasswordStatus get status;
  @override
  String get errorMessage;
  @override
  String get deeplink;
  @override
  bool get showBiometric;
  @override
  String get name;
  @override
  String get photoUrl;

  /// Create a copy of VerifyPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyPasswordStateImplCopyWith<_$VerifyPasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
