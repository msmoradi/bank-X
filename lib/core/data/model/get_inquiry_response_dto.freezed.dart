// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_inquiry_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetInquiryResponseDto _$GetInquiryResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _GetInquiryResponseDto.fromJson(json);
}

/// @nodoc
mixin _$GetInquiryResponseDto {
  AddressDto get address => throw _privateConstructorUsedError;

  /// Serializes this GetInquiryResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetInquiryResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetInquiryResponseDtoCopyWith<GetInquiryResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetInquiryResponseDtoCopyWith<$Res> {
  factory $GetInquiryResponseDtoCopyWith(GetInquiryResponseDto value,
          $Res Function(GetInquiryResponseDto) then) =
      _$GetInquiryResponseDtoCopyWithImpl<$Res, GetInquiryResponseDto>;
  @useResult
  $Res call({AddressDto address});

  $AddressDtoCopyWith<$Res> get address;
}

/// @nodoc
class _$GetInquiryResponseDtoCopyWithImpl<$Res,
        $Val extends GetInquiryResponseDto>
    implements $GetInquiryResponseDtoCopyWith<$Res> {
  _$GetInquiryResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetInquiryResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDto,
    ) as $Val);
  }

  /// Create a copy of GetInquiryResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressDtoCopyWith<$Res> get address {
    return $AddressDtoCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetInquiryResponseDtoImplCopyWith<$Res>
    implements $GetInquiryResponseDtoCopyWith<$Res> {
  factory _$$GetInquiryResponseDtoImplCopyWith(
          _$GetInquiryResponseDtoImpl value,
          $Res Function(_$GetInquiryResponseDtoImpl) then) =
      __$$GetInquiryResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddressDto address});

  @override
  $AddressDtoCopyWith<$Res> get address;
}

/// @nodoc
class __$$GetInquiryResponseDtoImplCopyWithImpl<$Res>
    extends _$GetInquiryResponseDtoCopyWithImpl<$Res,
        _$GetInquiryResponseDtoImpl>
    implements _$$GetInquiryResponseDtoImplCopyWith<$Res> {
  __$$GetInquiryResponseDtoImplCopyWithImpl(_$GetInquiryResponseDtoImpl _value,
      $Res Function(_$GetInquiryResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetInquiryResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$GetInquiryResponseDtoImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetInquiryResponseDtoImpl implements _GetInquiryResponseDto {
  const _$GetInquiryResponseDtoImpl({required this.address});

  factory _$GetInquiryResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetInquiryResponseDtoImplFromJson(json);

  @override
  final AddressDto address;

  @override
  String toString() {
    return 'GetInquiryResponseDto(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInquiryResponseDtoImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, address);

  /// Create a copy of GetInquiryResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInquiryResponseDtoImplCopyWith<_$GetInquiryResponseDtoImpl>
      get copyWith => __$$GetInquiryResponseDtoImplCopyWithImpl<
          _$GetInquiryResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetInquiryResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _GetInquiryResponseDto implements GetInquiryResponseDto {
  const factory _GetInquiryResponseDto({required final AddressDto address}) =
      _$GetInquiryResponseDtoImpl;

  factory _GetInquiryResponseDto.fromJson(Map<String, dynamic> json) =
      _$GetInquiryResponseDtoImpl.fromJson;

  @override
  AddressDto get address;

  /// Create a copy of GetInquiryResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetInquiryResponseDtoImplCopyWith<_$GetInquiryResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
