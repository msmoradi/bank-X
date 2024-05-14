// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passkey_attestation_options_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PasskeyAttestationOptionsRequestDTO
    _$PasskeyAttestationOptionsRequestDTOFromJson(Map<String, dynamic> json) {
  return _PasskeyAttestationOptionsRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$PasskeyAttestationOptionsRequestDTO {
  String get userName => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  AuthenticatorSelectionDTO get authenticatorSelection =>
      throw _privateConstructorUsedError;
  String get attestation => throw _privateConstructorUsedError;

  /// Serializes this PasskeyAttestationOptionsRequestDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasskeyAttestationOptionsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasskeyAttestationOptionsRequestDTOCopyWith<
          PasskeyAttestationOptionsRequestDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasskeyAttestationOptionsRequestDTOCopyWith<$Res> {
  factory $PasskeyAttestationOptionsRequestDTOCopyWith(
          PasskeyAttestationOptionsRequestDTO value,
          $Res Function(PasskeyAttestationOptionsRequestDTO) then) =
      _$PasskeyAttestationOptionsRequestDTOCopyWithImpl<$Res,
          PasskeyAttestationOptionsRequestDTO>;
  @useResult
  $Res call(
      {String userName,
      String displayName,
      AuthenticatorSelectionDTO authenticatorSelection,
      String attestation});

  $AuthenticatorSelectionDTOCopyWith<$Res> get authenticatorSelection;
}

/// @nodoc
class _$PasskeyAttestationOptionsRequestDTOCopyWithImpl<$Res,
        $Val extends PasskeyAttestationOptionsRequestDTO>
    implements $PasskeyAttestationOptionsRequestDTOCopyWith<$Res> {
  _$PasskeyAttestationOptionsRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasskeyAttestationOptionsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? displayName = null,
    Object? authenticatorSelection = null,
    Object? attestation = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      authenticatorSelection: null == authenticatorSelection
          ? _value.authenticatorSelection
          : authenticatorSelection // ignore: cast_nullable_to_non_nullable
              as AuthenticatorSelectionDTO,
      attestation: null == attestation
          ? _value.attestation
          : attestation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of PasskeyAttestationOptionsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthenticatorSelectionDTOCopyWith<$Res> get authenticatorSelection {
    return $AuthenticatorSelectionDTOCopyWith<$Res>(
        _value.authenticatorSelection, (value) {
      return _then(_value.copyWith(authenticatorSelection: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PasskeyAttestationOptionsRequestDTOImplCopyWith<$Res>
    implements $PasskeyAttestationOptionsRequestDTOCopyWith<$Res> {
  factory _$$PasskeyAttestationOptionsRequestDTOImplCopyWith(
          _$PasskeyAttestationOptionsRequestDTOImpl value,
          $Res Function(_$PasskeyAttestationOptionsRequestDTOImpl) then) =
      __$$PasskeyAttestationOptionsRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userName,
      String displayName,
      AuthenticatorSelectionDTO authenticatorSelection,
      String attestation});

  @override
  $AuthenticatorSelectionDTOCopyWith<$Res> get authenticatorSelection;
}

/// @nodoc
class __$$PasskeyAttestationOptionsRequestDTOImplCopyWithImpl<$Res>
    extends _$PasskeyAttestationOptionsRequestDTOCopyWithImpl<$Res,
        _$PasskeyAttestationOptionsRequestDTOImpl>
    implements _$$PasskeyAttestationOptionsRequestDTOImplCopyWith<$Res> {
  __$$PasskeyAttestationOptionsRequestDTOImplCopyWithImpl(
      _$PasskeyAttestationOptionsRequestDTOImpl _value,
      $Res Function(_$PasskeyAttestationOptionsRequestDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasskeyAttestationOptionsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? displayName = null,
    Object? authenticatorSelection = null,
    Object? attestation = null,
  }) {
    return _then(_$PasskeyAttestationOptionsRequestDTOImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      authenticatorSelection: null == authenticatorSelection
          ? _value.authenticatorSelection
          : authenticatorSelection // ignore: cast_nullable_to_non_nullable
              as AuthenticatorSelectionDTO,
      attestation: null == attestation
          ? _value.attestation
          : attestation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasskeyAttestationOptionsRequestDTOImpl
    implements _PasskeyAttestationOptionsRequestDTO {
  const _$PasskeyAttestationOptionsRequestDTOImpl(
      {required this.userName,
      required this.displayName,
      required this.authenticatorSelection,
      required this.attestation});

  factory _$PasskeyAttestationOptionsRequestDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PasskeyAttestationOptionsRequestDTOImplFromJson(json);

  @override
  final String userName;
  @override
  final String displayName;
  @override
  final AuthenticatorSelectionDTO authenticatorSelection;
  @override
  final String attestation;

  @override
  String toString() {
    return 'PasskeyAttestationOptionsRequestDTO(userName: $userName, displayName: $displayName, authenticatorSelection: $authenticatorSelection, attestation: $attestation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasskeyAttestationOptionsRequestDTOImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.authenticatorSelection, authenticatorSelection) ||
                other.authenticatorSelection == authenticatorSelection) &&
            (identical(other.attestation, attestation) ||
                other.attestation == attestation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, userName, displayName, authenticatorSelection, attestation);

  /// Create a copy of PasskeyAttestationOptionsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasskeyAttestationOptionsRequestDTOImplCopyWith<
          _$PasskeyAttestationOptionsRequestDTOImpl>
      get copyWith => __$$PasskeyAttestationOptionsRequestDTOImplCopyWithImpl<
          _$PasskeyAttestationOptionsRequestDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasskeyAttestationOptionsRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _PasskeyAttestationOptionsRequestDTO
    implements PasskeyAttestationOptionsRequestDTO {
  const factory _PasskeyAttestationOptionsRequestDTO(
          {required final String userName,
          required final String displayName,
          required final AuthenticatorSelectionDTO authenticatorSelection,
          required final String attestation}) =
      _$PasskeyAttestationOptionsRequestDTOImpl;

  factory _PasskeyAttestationOptionsRequestDTO.fromJson(
          Map<String, dynamic> json) =
      _$PasskeyAttestationOptionsRequestDTOImpl.fromJson;

  @override
  String get userName;
  @override
  String get displayName;
  @override
  AuthenticatorSelectionDTO get authenticatorSelection;
  @override
  String get attestation;

  /// Create a copy of PasskeyAttestationOptionsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasskeyAttestationOptionsRequestDTOImplCopyWith<
          _$PasskeyAttestationOptionsRequestDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AuthenticatorSelectionDTO _$AuthenticatorSelectionDTOFromJson(
    Map<String, dynamic> json) {
  return _AuthenticatorSelectionDTO.fromJson(json);
}

/// @nodoc
mixin _$AuthenticatorSelectionDTO {
  String get residentKey => throw _privateConstructorUsedError;
  String get authenticatorAttachment => throw _privateConstructorUsedError;
  String get userVerification => throw _privateConstructorUsedError;

  /// Serializes this AuthenticatorSelectionDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthenticatorSelectionDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthenticatorSelectionDTOCopyWith<AuthenticatorSelectionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatorSelectionDTOCopyWith<$Res> {
  factory $AuthenticatorSelectionDTOCopyWith(AuthenticatorSelectionDTO value,
          $Res Function(AuthenticatorSelectionDTO) then) =
      _$AuthenticatorSelectionDTOCopyWithImpl<$Res, AuthenticatorSelectionDTO>;
  @useResult
  $Res call(
      {String residentKey,
      String authenticatorAttachment,
      String userVerification});
}

/// @nodoc
class _$AuthenticatorSelectionDTOCopyWithImpl<$Res,
        $Val extends AuthenticatorSelectionDTO>
    implements $AuthenticatorSelectionDTOCopyWith<$Res> {
  _$AuthenticatorSelectionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticatorSelectionDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentKey = null,
    Object? authenticatorAttachment = null,
    Object? userVerification = null,
  }) {
    return _then(_value.copyWith(
      residentKey: null == residentKey
          ? _value.residentKey
          : residentKey // ignore: cast_nullable_to_non_nullable
              as String,
      authenticatorAttachment: null == authenticatorAttachment
          ? _value.authenticatorAttachment
          : authenticatorAttachment // ignore: cast_nullable_to_non_nullable
              as String,
      userVerification: null == userVerification
          ? _value.userVerification
          : userVerification // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticatorSelectionDTOImplCopyWith<$Res>
    implements $AuthenticatorSelectionDTOCopyWith<$Res> {
  factory _$$AuthenticatorSelectionDTOImplCopyWith(
          _$AuthenticatorSelectionDTOImpl value,
          $Res Function(_$AuthenticatorSelectionDTOImpl) then) =
      __$$AuthenticatorSelectionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String residentKey,
      String authenticatorAttachment,
      String userVerification});
}

/// @nodoc
class __$$AuthenticatorSelectionDTOImplCopyWithImpl<$Res>
    extends _$AuthenticatorSelectionDTOCopyWithImpl<$Res,
        _$AuthenticatorSelectionDTOImpl>
    implements _$$AuthenticatorSelectionDTOImplCopyWith<$Res> {
  __$$AuthenticatorSelectionDTOImplCopyWithImpl(
      _$AuthenticatorSelectionDTOImpl _value,
      $Res Function(_$AuthenticatorSelectionDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticatorSelectionDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentKey = null,
    Object? authenticatorAttachment = null,
    Object? userVerification = null,
  }) {
    return _then(_$AuthenticatorSelectionDTOImpl(
      residentKey: null == residentKey
          ? _value.residentKey
          : residentKey // ignore: cast_nullable_to_non_nullable
              as String,
      authenticatorAttachment: null == authenticatorAttachment
          ? _value.authenticatorAttachment
          : authenticatorAttachment // ignore: cast_nullable_to_non_nullable
              as String,
      userVerification: null == userVerification
          ? _value.userVerification
          : userVerification // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticatorSelectionDTOImpl implements _AuthenticatorSelectionDTO {
  const _$AuthenticatorSelectionDTOImpl(
      {required this.residentKey,
      required this.authenticatorAttachment,
      required this.userVerification});

  factory _$AuthenticatorSelectionDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticatorSelectionDTOImplFromJson(json);

  @override
  final String residentKey;
  @override
  final String authenticatorAttachment;
  @override
  final String userVerification;

  @override
  String toString() {
    return 'AuthenticatorSelectionDTO(residentKey: $residentKey, authenticatorAttachment: $authenticatorAttachment, userVerification: $userVerification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatorSelectionDTOImpl &&
            (identical(other.residentKey, residentKey) ||
                other.residentKey == residentKey) &&
            (identical(
                    other.authenticatorAttachment, authenticatorAttachment) ||
                other.authenticatorAttachment == authenticatorAttachment) &&
            (identical(other.userVerification, userVerification) ||
                other.userVerification == userVerification));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, residentKey, authenticatorAttachment, userVerification);

  /// Create a copy of AuthenticatorSelectionDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatorSelectionDTOImplCopyWith<_$AuthenticatorSelectionDTOImpl>
      get copyWith => __$$AuthenticatorSelectionDTOImplCopyWithImpl<
          _$AuthenticatorSelectionDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticatorSelectionDTOImplToJson(
      this,
    );
  }
}

abstract class _AuthenticatorSelectionDTO implements AuthenticatorSelectionDTO {
  const factory _AuthenticatorSelectionDTO(
          {required final String residentKey,
          required final String authenticatorAttachment,
          required final String userVerification}) =
      _$AuthenticatorSelectionDTOImpl;

  factory _AuthenticatorSelectionDTO.fromJson(Map<String, dynamic> json) =
      _$AuthenticatorSelectionDTOImpl.fromJson;

  @override
  String get residentKey;
  @override
  String get authenticatorAttachment;
  @override
  String get userVerification;

  /// Create a copy of AuthenticatorSelectionDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticatorSelectionDTOImplCopyWith<_$AuthenticatorSelectionDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
