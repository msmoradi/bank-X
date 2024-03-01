// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_types_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CardTypesResponseDto _$CardTypesResponseDtoFromJson(Map<String, dynamic> json) {
  return _CardTypesResponseDto.fromJson(json);
}

/// @nodoc
mixin _$CardTypesResponseDto {
  List<CardTypeDto> get cardTypes => throw _privateConstructorUsedError;

  /// Serializes this CardTypesResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CardTypesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CardTypesResponseDtoCopyWith<CardTypesResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardTypesResponseDtoCopyWith<$Res> {
  factory $CardTypesResponseDtoCopyWith(CardTypesResponseDto value,
          $Res Function(CardTypesResponseDto) then) =
      _$CardTypesResponseDtoCopyWithImpl<$Res, CardTypesResponseDto>;
  @useResult
  $Res call({List<CardTypeDto> cardTypes});
}

/// @nodoc
class _$CardTypesResponseDtoCopyWithImpl<$Res,
        $Val extends CardTypesResponseDto>
    implements $CardTypesResponseDtoCopyWith<$Res> {
  _$CardTypesResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardTypesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardTypes = null,
  }) {
    return _then(_value.copyWith(
      cardTypes: null == cardTypes
          ? _value.cardTypes
          : cardTypes // ignore: cast_nullable_to_non_nullable
              as List<CardTypeDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardTypesResponseDtoImplCopyWith<$Res>
    implements $CardTypesResponseDtoCopyWith<$Res> {
  factory _$$CardTypesResponseDtoImplCopyWith(_$CardTypesResponseDtoImpl value,
          $Res Function(_$CardTypesResponseDtoImpl) then) =
      __$$CardTypesResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CardTypeDto> cardTypes});
}

/// @nodoc
class __$$CardTypesResponseDtoImplCopyWithImpl<$Res>
    extends _$CardTypesResponseDtoCopyWithImpl<$Res, _$CardTypesResponseDtoImpl>
    implements _$$CardTypesResponseDtoImplCopyWith<$Res> {
  __$$CardTypesResponseDtoImplCopyWithImpl(_$CardTypesResponseDtoImpl _value,
      $Res Function(_$CardTypesResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardTypesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardTypes = null,
  }) {
    return _then(_$CardTypesResponseDtoImpl(
      cardTypes: null == cardTypes
          ? _value._cardTypes
          : cardTypes // ignore: cast_nullable_to_non_nullable
              as List<CardTypeDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardTypesResponseDtoImpl implements _CardTypesResponseDto {
  const _$CardTypesResponseDtoImpl({required final List<CardTypeDto> cardTypes})
      : _cardTypes = cardTypes;

  factory _$CardTypesResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardTypesResponseDtoImplFromJson(json);

  final List<CardTypeDto> _cardTypes;
  @override
  List<CardTypeDto> get cardTypes {
    if (_cardTypes is EqualUnmodifiableListView) return _cardTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cardTypes);
  }

  @override
  String toString() {
    return 'CardTypesResponseDto(cardTypes: $cardTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardTypesResponseDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._cardTypes, _cardTypes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cardTypes));

  /// Create a copy of CardTypesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardTypesResponseDtoImplCopyWith<_$CardTypesResponseDtoImpl>
      get copyWith =>
          __$$CardTypesResponseDtoImplCopyWithImpl<_$CardTypesResponseDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardTypesResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _CardTypesResponseDto implements CardTypesResponseDto {
  const factory _CardTypesResponseDto(
          {required final List<CardTypeDto> cardTypes}) =
      _$CardTypesResponseDtoImpl;

  factory _CardTypesResponseDto.fromJson(Map<String, dynamic> json) =
      _$CardTypesResponseDtoImpl.fromJson;

  @override
  List<CardTypeDto> get cardTypes;

  /// Create a copy of CardTypesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardTypesResponseDtoImplCopyWith<_$CardTypesResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
