// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_inquiry_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetInquiryRequestDto _$GetInquiryRequestDtoFromJson(Map<String, dynamic> json) {
  return _GetInquiryRequestDto.fromJson(json);
}

/// @nodoc
mixin _$GetInquiryRequestDto {
  @JsonKey(name: 'postal-code')
  String get postalCode => throw _privateConstructorUsedError;

  /// Serializes this GetInquiryRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetInquiryRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetInquiryRequestDtoCopyWith<GetInquiryRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetInquiryRequestDtoCopyWith<$Res> {
  factory $GetInquiryRequestDtoCopyWith(GetInquiryRequestDto value,
          $Res Function(GetInquiryRequestDto) then) =
      _$GetInquiryRequestDtoCopyWithImpl<$Res, GetInquiryRequestDto>;
  @useResult
  $Res call({@JsonKey(name: 'postal-code') String postalCode});
}

/// @nodoc
class _$GetInquiryRequestDtoCopyWithImpl<$Res,
        $Val extends GetInquiryRequestDto>
    implements $GetInquiryRequestDtoCopyWith<$Res> {
  _$GetInquiryRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetInquiryRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postalCode = null,
  }) {
    return _then(_value.copyWith(
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetInquiryRequestDtoImplCopyWith<$Res>
    implements $GetInquiryRequestDtoCopyWith<$Res> {
  factory _$$GetInquiryRequestDtoImplCopyWith(_$GetInquiryRequestDtoImpl value,
          $Res Function(_$GetInquiryRequestDtoImpl) then) =
      __$$GetInquiryRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'postal-code') String postalCode});
}

/// @nodoc
class __$$GetInquiryRequestDtoImplCopyWithImpl<$Res>
    extends _$GetInquiryRequestDtoCopyWithImpl<$Res, _$GetInquiryRequestDtoImpl>
    implements _$$GetInquiryRequestDtoImplCopyWith<$Res> {
  __$$GetInquiryRequestDtoImplCopyWithImpl(_$GetInquiryRequestDtoImpl _value,
      $Res Function(_$GetInquiryRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetInquiryRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postalCode = null,
  }) {
    return _then(_$GetInquiryRequestDtoImpl(
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetInquiryRequestDtoImpl implements _GetInquiryRequestDto {
  const _$GetInquiryRequestDtoImpl(
      {@JsonKey(name: 'postal-code') required this.postalCode});

  factory _$GetInquiryRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetInquiryRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'postal-code')
  final String postalCode;

  @override
  String toString() {
    return 'GetInquiryRequestDto(postalCode: $postalCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInquiryRequestDtoImpl &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, postalCode);

  /// Create a copy of GetInquiryRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInquiryRequestDtoImplCopyWith<_$GetInquiryRequestDtoImpl>
      get copyWith =>
          __$$GetInquiryRequestDtoImplCopyWithImpl<_$GetInquiryRequestDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetInquiryRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _GetInquiryRequestDto implements GetInquiryRequestDto {
  const factory _GetInquiryRequestDto(
          {@JsonKey(name: 'postal-code') required final String postalCode}) =
      _$GetInquiryRequestDtoImpl;

  factory _GetInquiryRequestDto.fromJson(Map<String, dynamic> json) =
      _$GetInquiryRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'postal-code')
  String get postalCode;

  /// Create a copy of GetInquiryRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetInquiryRequestDtoImplCopyWith<_$GetInquiryRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
