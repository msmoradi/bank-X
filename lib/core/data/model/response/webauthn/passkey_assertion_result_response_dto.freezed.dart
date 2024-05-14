// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passkey_assertion_result_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PasskeyAssertionResultResponseDTO _$PasskeyAssertionResultResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _PasskeyAssertionResultResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$PasskeyAssertionResultResponseDTO {
  String get status => throw _privateConstructorUsedError;
  String get loa => throw _privateConstructorUsedError;

  /// Serializes this PasskeyAssertionResultResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasskeyAssertionResultResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasskeyAssertionResultResponseDTOCopyWith<PasskeyAssertionResultResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasskeyAssertionResultResponseDTOCopyWith<$Res> {
  factory $PasskeyAssertionResultResponseDTOCopyWith(
          PasskeyAssertionResultResponseDTO value,
          $Res Function(PasskeyAssertionResultResponseDTO) then) =
      _$PasskeyAssertionResultResponseDTOCopyWithImpl<$Res,
          PasskeyAssertionResultResponseDTO>;
  @useResult
  $Res call({String status, String loa});
}

/// @nodoc
class _$PasskeyAssertionResultResponseDTOCopyWithImpl<$Res,
        $Val extends PasskeyAssertionResultResponseDTO>
    implements $PasskeyAssertionResultResponseDTOCopyWith<$Res> {
  _$PasskeyAssertionResultResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasskeyAssertionResultResponseDTO
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
abstract class _$$PasskeyAssertionResultResponseDTOImplCopyWith<$Res>
    implements $PasskeyAssertionResultResponseDTOCopyWith<$Res> {
  factory _$$PasskeyAssertionResultResponseDTOImplCopyWith(
          _$PasskeyAssertionResultResponseDTOImpl value,
          $Res Function(_$PasskeyAssertionResultResponseDTOImpl) then) =
      __$$PasskeyAssertionResultResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String loa});
}

/// @nodoc
class __$$PasskeyAssertionResultResponseDTOImplCopyWithImpl<$Res>
    extends _$PasskeyAssertionResultResponseDTOCopyWithImpl<$Res,
        _$PasskeyAssertionResultResponseDTOImpl>
    implements _$$PasskeyAssertionResultResponseDTOImplCopyWith<$Res> {
  __$$PasskeyAssertionResultResponseDTOImplCopyWithImpl(
      _$PasskeyAssertionResultResponseDTOImpl _value,
      $Res Function(_$PasskeyAssertionResultResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasskeyAssertionResultResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? loa = null,
  }) {
    return _then(_$PasskeyAssertionResultResponseDTOImpl(
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
class _$PasskeyAssertionResultResponseDTOImpl
    implements _PasskeyAssertionResultResponseDTO {
  const _$PasskeyAssertionResultResponseDTOImpl(
      {required this.status, required this.loa});

  factory _$PasskeyAssertionResultResponseDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PasskeyAssertionResultResponseDTOImplFromJson(json);

  @override
  final String status;
  @override
  final String loa;

  @override
  String toString() {
    return 'PasskeyAssertionResultResponseDTO(status: $status, loa: $loa)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasskeyAssertionResultResponseDTOImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.loa, loa) || other.loa == loa));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, loa);

  /// Create a copy of PasskeyAssertionResultResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasskeyAssertionResultResponseDTOImplCopyWith<
          _$PasskeyAssertionResultResponseDTOImpl>
      get copyWith => __$$PasskeyAssertionResultResponseDTOImplCopyWithImpl<
          _$PasskeyAssertionResultResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasskeyAssertionResultResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _PasskeyAssertionResultResponseDTO
    implements PasskeyAssertionResultResponseDTO {
  const factory _PasskeyAssertionResultResponseDTO(
      {required final String status,
      required final String loa}) = _$PasskeyAssertionResultResponseDTOImpl;

  factory _PasskeyAssertionResultResponseDTO.fromJson(
          Map<String, dynamic> json) =
      _$PasskeyAssertionResultResponseDTOImpl.fromJson;

  @override
  String get status;
  @override
  String get loa;

  /// Create a copy of PasskeyAssertionResultResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasskeyAssertionResultResponseDTOImplCopyWith<
          _$PasskeyAssertionResultResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
