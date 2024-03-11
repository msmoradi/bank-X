// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_delivery_time_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CardDeliveryTimeState {
  CardDeliveryTimeStatus get status => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get deeplink => throw _privateConstructorUsedError;

  /// Create a copy of CardDeliveryTimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CardDeliveryTimeStateCopyWith<CardDeliveryTimeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardDeliveryTimeStateCopyWith<$Res> {
  factory $CardDeliveryTimeStateCopyWith(CardDeliveryTimeState value,
          $Res Function(CardDeliveryTimeState) then) =
      _$CardDeliveryTimeStateCopyWithImpl<$Res, CardDeliveryTimeState>;
  @useResult
  $Res call(
      {CardDeliveryTimeStatus status, String errorMessage, String deeplink});
}

/// @nodoc
class _$CardDeliveryTimeStateCopyWithImpl<$Res,
        $Val extends CardDeliveryTimeState>
    implements $CardDeliveryTimeStateCopyWith<$Res> {
  _$CardDeliveryTimeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardDeliveryTimeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
    Object? deeplink = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CardDeliveryTimeStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      deeplink: null == deeplink
          ? _value.deeplink
          : deeplink // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardDeliveryTimeStateImplCopyWith<$Res>
    implements $CardDeliveryTimeStateCopyWith<$Res> {
  factory _$$CardDeliveryTimeStateImplCopyWith(
          _$CardDeliveryTimeStateImpl value,
          $Res Function(_$CardDeliveryTimeStateImpl) then) =
      __$$CardDeliveryTimeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CardDeliveryTimeStatus status, String errorMessage, String deeplink});
}

/// @nodoc
class __$$CardDeliveryTimeStateImplCopyWithImpl<$Res>
    extends _$CardDeliveryTimeStateCopyWithImpl<$Res,
        _$CardDeliveryTimeStateImpl>
    implements _$$CardDeliveryTimeStateImplCopyWith<$Res> {
  __$$CardDeliveryTimeStateImplCopyWithImpl(_$CardDeliveryTimeStateImpl _value,
      $Res Function(_$CardDeliveryTimeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardDeliveryTimeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
    Object? deeplink = null,
  }) {
    return _then(_$CardDeliveryTimeStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CardDeliveryTimeStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      deeplink: null == deeplink
          ? _value.deeplink
          : deeplink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CardDeliveryTimeStateImpl implements _CardDeliveryTimeState {
  const _$CardDeliveryTimeStateImpl(
      {this.status = CardDeliveryTimeStatus.initial,
      this.errorMessage = '',
      this.deeplink = ''});

  @override
  @JsonKey()
  final CardDeliveryTimeStatus status;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final String deeplink;

  @override
  String toString() {
    return 'CardDeliveryTimeState(status: $status, errorMessage: $errorMessage, deeplink: $deeplink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardDeliveryTimeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.deeplink, deeplink) ||
                other.deeplink == deeplink));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, errorMessage, deeplink);

  /// Create a copy of CardDeliveryTimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardDeliveryTimeStateImplCopyWith<_$CardDeliveryTimeStateImpl>
      get copyWith => __$$CardDeliveryTimeStateImplCopyWithImpl<
          _$CardDeliveryTimeStateImpl>(this, _$identity);
}

abstract class _CardDeliveryTimeState implements CardDeliveryTimeState {
  const factory _CardDeliveryTimeState(
      {final CardDeliveryTimeStatus status,
      final String errorMessage,
      final String deeplink}) = _$CardDeliveryTimeStateImpl;

  @override
  CardDeliveryTimeStatus get status;
  @override
  String get errorMessage;
  @override
  String get deeplink;

  /// Create a copy of CardDeliveryTimeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardDeliveryTimeStateImplCopyWith<_$CardDeliveryTimeStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
