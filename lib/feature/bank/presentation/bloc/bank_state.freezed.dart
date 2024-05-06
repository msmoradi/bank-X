// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BankState {
  BankStatus get status => throw _privateConstructorUsedError;
  BankCardStatus get bankCardStatus => throw _privateConstructorUsedError;
  List<TransactionModel> get transactions => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of BankState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BankStateCopyWith<BankState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankStateCopyWith<$Res> {
  factory $BankStateCopyWith(BankState value, $Res Function(BankState) then) =
      _$BankStateCopyWithImpl<$Res, BankState>;
  @useResult
  $Res call(
      {BankStatus status,
      BankCardStatus bankCardStatus,
      List<TransactionModel> transactions,
      String errorMessage});
}

/// @nodoc
class _$BankStateCopyWithImpl<$Res, $Val extends BankState>
    implements $BankStateCopyWith<$Res> {
  _$BankStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BankState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? bankCardStatus = null,
    Object? transactions = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BankStatus,
      bankCardStatus: null == bankCardStatus
          ? _value.bankCardStatus
          : bankCardStatus // ignore: cast_nullable_to_non_nullable
              as BankCardStatus,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankStateImplCopyWith<$Res>
    implements $BankStateCopyWith<$Res> {
  factory _$$BankStateImplCopyWith(
          _$BankStateImpl value, $Res Function(_$BankStateImpl) then) =
      __$$BankStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BankStatus status,
      BankCardStatus bankCardStatus,
      List<TransactionModel> transactions,
      String errorMessage});
}

/// @nodoc
class __$$BankStateImplCopyWithImpl<$Res>
    extends _$BankStateCopyWithImpl<$Res, _$BankStateImpl>
    implements _$$BankStateImplCopyWith<$Res> {
  __$$BankStateImplCopyWithImpl(
      _$BankStateImpl _value, $Res Function(_$BankStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BankState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? bankCardStatus = null,
    Object? transactions = null,
    Object? errorMessage = null,
  }) {
    return _then(_$BankStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BankStatus,
      bankCardStatus: null == bankCardStatus
          ? _value.bankCardStatus
          : bankCardStatus // ignore: cast_nullable_to_non_nullable
              as BankCardStatus,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BankStateImpl extends _BankState {
  const _$BankStateImpl(
      {required this.status,
      required this.bankCardStatus,
      final List<TransactionModel> transactions = const [],
      required this.errorMessage})
      : _transactions = transactions,
        super._();

  @override
  final BankStatus status;
  @override
  final BankCardStatus bankCardStatus;
  final List<TransactionModel> _transactions;
  @override
  @JsonKey()
  List<TransactionModel> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'BankState(status: $status, bankCardStatus: $bankCardStatus, transactions: $transactions, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.bankCardStatus, bankCardStatus) ||
                other.bankCardStatus == bankCardStatus) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, bankCardStatus,
      const DeepCollectionEquality().hash(_transactions), errorMessage);

  /// Create a copy of BankState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BankStateImplCopyWith<_$BankStateImpl> get copyWith =>
      __$$BankStateImplCopyWithImpl<_$BankStateImpl>(this, _$identity);
}

abstract class _BankState extends BankState {
  const factory _BankState(
      {required final BankStatus status,
      required final BankCardStatus bankCardStatus,
      final List<TransactionModel> transactions,
      required final String errorMessage}) = _$BankStateImpl;
  const _BankState._() : super._();

  @override
  BankStatus get status;
  @override
  BankCardStatus get bankCardStatus;
  @override
  List<TransactionModel> get transactions;
  @override
  String get errorMessage;

  /// Create a copy of BankState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BankStateImplCopyWith<_$BankStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
