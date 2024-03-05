// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelectCardState {
  SelectCardStatus get status => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<AddressEntity> get addressList => throw _privateConstructorUsedError;
  int get cardTypeId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get priceLabel => throw _privateConstructorUsedError;

  /// Create a copy of SelectCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectCardStateCopyWith<SelectCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectCardStateCopyWith<$Res> {
  factory $SelectCardStateCopyWith(
          SelectCardState value, $Res Function(SelectCardState) then) =
      _$SelectCardStateCopyWithImpl<$Res, SelectCardState>;
  @useResult
  $Res call(
      {SelectCardStatus status,
      String errorMessage,
      List<AddressEntity> addressList,
      int cardTypeId,
      String title,
      String description,
      String priceLabel});
}

/// @nodoc
class _$SelectCardStateCopyWithImpl<$Res, $Val extends SelectCardState>
    implements $SelectCardStateCopyWith<$Res> {
  _$SelectCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
    Object? addressList = null,
    Object? cardTypeId = null,
    Object? title = null,
    Object? description = null,
    Object? priceLabel = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SelectCardStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      addressList: null == addressList
          ? _value.addressList
          : addressList // ignore: cast_nullable_to_non_nullable
              as List<AddressEntity>,
      cardTypeId: null == cardTypeId
          ? _value.cardTypeId
          : cardTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      priceLabel: null == priceLabel
          ? _value.priceLabel
          : priceLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectCardStateImplCopyWith<$Res>
    implements $SelectCardStateCopyWith<$Res> {
  factory _$$SelectCardStateImplCopyWith(_$SelectCardStateImpl value,
          $Res Function(_$SelectCardStateImpl) then) =
      __$$SelectCardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SelectCardStatus status,
      String errorMessage,
      List<AddressEntity> addressList,
      int cardTypeId,
      String title,
      String description,
      String priceLabel});
}

/// @nodoc
class __$$SelectCardStateImplCopyWithImpl<$Res>
    extends _$SelectCardStateCopyWithImpl<$Res, _$SelectCardStateImpl>
    implements _$$SelectCardStateImplCopyWith<$Res> {
  __$$SelectCardStateImplCopyWithImpl(
      _$SelectCardStateImpl _value, $Res Function(_$SelectCardStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
    Object? addressList = null,
    Object? cardTypeId = null,
    Object? title = null,
    Object? description = null,
    Object? priceLabel = null,
  }) {
    return _then(_$SelectCardStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SelectCardStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      addressList: null == addressList
          ? _value._addressList
          : addressList // ignore: cast_nullable_to_non_nullable
              as List<AddressEntity>,
      cardTypeId: null == cardTypeId
          ? _value.cardTypeId
          : cardTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      priceLabel: null == priceLabel
          ? _value.priceLabel
          : priceLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectCardStateImpl implements _SelectCardState {
  const _$SelectCardStateImpl(
      {this.status = SelectCardStatus.initial,
      this.errorMessage = '',
      final List<AddressEntity> addressList = const [],
      this.cardTypeId = 0,
      this.title = '',
      this.description = '',
      this.priceLabel = ''})
      : _addressList = addressList;

  @override
  @JsonKey()
  final SelectCardStatus status;
  @override
  @JsonKey()
  final String errorMessage;
  final List<AddressEntity> _addressList;
  @override
  @JsonKey()
  List<AddressEntity> get addressList {
    if (_addressList is EqualUnmodifiableListView) return _addressList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addressList);
  }

  @override
  @JsonKey()
  final int cardTypeId;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String priceLabel;

  @override
  String toString() {
    return 'SelectCardState(status: $status, errorMessage: $errorMessage, addressList: $addressList, cardTypeId: $cardTypeId, title: $title, description: $description, priceLabel: $priceLabel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectCardStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._addressList, _addressList) &&
            (identical(other.cardTypeId, cardTypeId) ||
                other.cardTypeId == cardTypeId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.priceLabel, priceLabel) ||
                other.priceLabel == priceLabel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      errorMessage,
      const DeepCollectionEquality().hash(_addressList),
      cardTypeId,
      title,
      description,
      priceLabel);

  /// Create a copy of SelectCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectCardStateImplCopyWith<_$SelectCardStateImpl> get copyWith =>
      __$$SelectCardStateImplCopyWithImpl<_$SelectCardStateImpl>(
          this, _$identity);
}

abstract class _SelectCardState implements SelectCardState {
  const factory _SelectCardState(
      {final SelectCardStatus status,
      final String errorMessage,
      final List<AddressEntity> addressList,
      final int cardTypeId,
      final String title,
      final String description,
      final String priceLabel}) = _$SelectCardStateImpl;

  @override
  SelectCardStatus get status;
  @override
  String get errorMessage;
  @override
  List<AddressEntity> get addressList;
  @override
  int get cardTypeId;
  @override
  String get title;
  @override
  String get description;
  @override
  String get priceLabel;

  /// Create a copy of SelectCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectCardStateImplCopyWith<_$SelectCardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
