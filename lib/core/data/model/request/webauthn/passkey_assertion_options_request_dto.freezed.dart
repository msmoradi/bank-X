// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passkey_assertion_options_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PasskeyAssertionOptionsRequestDTO _$PasskeyAssertionOptionsRequestDTOFromJson(
    Map<String, dynamic> json) {
  return _PasskeyAssertionOptionsRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$PasskeyAssertionOptionsRequestDTO {
  String get userName => throw _privateConstructorUsedError;

  /// Serializes this PasskeyAssertionOptionsRequestDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasskeyAssertionOptionsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasskeyAssertionOptionsRequestDTOCopyWith<PasskeyAssertionOptionsRequestDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasskeyAssertionOptionsRequestDTOCopyWith<$Res> {
  factory $PasskeyAssertionOptionsRequestDTOCopyWith(
          PasskeyAssertionOptionsRequestDTO value,
          $Res Function(PasskeyAssertionOptionsRequestDTO) then) =
      _$PasskeyAssertionOptionsRequestDTOCopyWithImpl<$Res,
          PasskeyAssertionOptionsRequestDTO>;
  @useResult
  $Res call({String userName});
}

/// @nodoc
class _$PasskeyAssertionOptionsRequestDTOCopyWithImpl<$Res,
        $Val extends PasskeyAssertionOptionsRequestDTO>
    implements $PasskeyAssertionOptionsRequestDTOCopyWith<$Res> {
  _$PasskeyAssertionOptionsRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasskeyAssertionOptionsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasskeyAssertionOptionsRequestDTOImplCopyWith<$Res>
    implements $PasskeyAssertionOptionsRequestDTOCopyWith<$Res> {
  factory _$$PasskeyAssertionOptionsRequestDTOImplCopyWith(
          _$PasskeyAssertionOptionsRequestDTOImpl value,
          $Res Function(_$PasskeyAssertionOptionsRequestDTOImpl) then) =
      __$$PasskeyAssertionOptionsRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName});
}

/// @nodoc
class __$$PasskeyAssertionOptionsRequestDTOImplCopyWithImpl<$Res>
    extends _$PasskeyAssertionOptionsRequestDTOCopyWithImpl<$Res,
        _$PasskeyAssertionOptionsRequestDTOImpl>
    implements _$$PasskeyAssertionOptionsRequestDTOImplCopyWith<$Res> {
  __$$PasskeyAssertionOptionsRequestDTOImplCopyWithImpl(
      _$PasskeyAssertionOptionsRequestDTOImpl _value,
      $Res Function(_$PasskeyAssertionOptionsRequestDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasskeyAssertionOptionsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
  }) {
    return _then(_$PasskeyAssertionOptionsRequestDTOImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasskeyAssertionOptionsRequestDTOImpl
    implements _PasskeyAssertionOptionsRequestDTO {
  const _$PasskeyAssertionOptionsRequestDTOImpl({required this.userName});

  factory _$PasskeyAssertionOptionsRequestDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PasskeyAssertionOptionsRequestDTOImplFromJson(json);

  @override
  final String userName;

  @override
  String toString() {
    return 'PasskeyAssertionOptionsRequestDTO(userName: $userName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasskeyAssertionOptionsRequestDTOImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userName);

  /// Create a copy of PasskeyAssertionOptionsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasskeyAssertionOptionsRequestDTOImplCopyWith<
          _$PasskeyAssertionOptionsRequestDTOImpl>
      get copyWith => __$$PasskeyAssertionOptionsRequestDTOImplCopyWithImpl<
          _$PasskeyAssertionOptionsRequestDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasskeyAssertionOptionsRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _PasskeyAssertionOptionsRequestDTO
    implements PasskeyAssertionOptionsRequestDTO {
  const factory _PasskeyAssertionOptionsRequestDTO(
          {required final String userName}) =
      _$PasskeyAssertionOptionsRequestDTOImpl;

  factory _PasskeyAssertionOptionsRequestDTO.fromJson(
          Map<String, dynamic> json) =
      _$PasskeyAssertionOptionsRequestDTOImpl.fromJson;

  @override
  String get userName;

  /// Create a copy of PasskeyAssertionOptionsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasskeyAssertionOptionsRequestDTOImplCopyWith<
          _$PasskeyAssertionOptionsRequestDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
