// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_destination_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionDestinationState {
  TransactionDestinationStatus get status => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of TransactionDestinationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionDestinationStateCopyWith<TransactionDestinationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDestinationStateCopyWith<$Res> {
  factory $TransactionDestinationStateCopyWith(
          TransactionDestinationState value,
          $Res Function(TransactionDestinationState) then) =
      _$TransactionDestinationStateCopyWithImpl<$Res,
          TransactionDestinationState>;
  @useResult
  $Res call({TransactionDestinationStatus status, String errorMessage});
}

/// @nodoc
class _$TransactionDestinationStateCopyWithImpl<$Res,
        $Val extends TransactionDestinationState>
    implements $TransactionDestinationStateCopyWith<$Res> {
  _$TransactionDestinationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionDestinationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionDestinationStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionDestinationStateImplCopyWith<$Res>
    implements $TransactionDestinationStateCopyWith<$Res> {
  factory _$$TransactionDestinationStateImplCopyWith(
          _$TransactionDestinationStateImpl value,
          $Res Function(_$TransactionDestinationStateImpl) then) =
      __$$TransactionDestinationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TransactionDestinationStatus status, String errorMessage});
}

/// @nodoc
class __$$TransactionDestinationStateImplCopyWithImpl<$Res>
    extends _$TransactionDestinationStateCopyWithImpl<$Res,
        _$TransactionDestinationStateImpl>
    implements _$$TransactionDestinationStateImplCopyWith<$Res> {
  __$$TransactionDestinationStateImplCopyWithImpl(
      _$TransactionDestinationStateImpl _value,
      $Res Function(_$TransactionDestinationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionDestinationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
  }) {
    return _then(_$TransactionDestinationStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionDestinationStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TransactionDestinationStateImpl
    implements _TransactionDestinationState {
  const _$TransactionDestinationStateImpl(
      {this.status = TransactionDestinationStatus.initial,
      this.errorMessage = ''});

  @override
  @JsonKey()
  final TransactionDestinationStatus status;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'TransactionDestinationState(status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDestinationStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, errorMessage);

  /// Create a copy of TransactionDestinationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDestinationStateImplCopyWith<_$TransactionDestinationStateImpl>
      get copyWith => __$$TransactionDestinationStateImplCopyWithImpl<
          _$TransactionDestinationStateImpl>(this, _$identity);
}

abstract class _TransactionDestinationState
    implements TransactionDestinationState {
  const factory _TransactionDestinationState(
      {final TransactionDestinationStatus status,
      final String errorMessage}) = _$TransactionDestinationStateImpl;

  @override
  TransactionDestinationStatus get status;
  @override
  String get errorMessage;

  /// Create a copy of TransactionDestinationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionDestinationStateImplCopyWith<_$TransactionDestinationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
