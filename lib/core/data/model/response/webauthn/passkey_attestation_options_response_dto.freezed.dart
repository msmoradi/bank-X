// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passkey_attestation_options_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PasskeyAttestationOptionsResponseDTO
    _$PasskeyAttestationOptionsResponseDTOFromJson(Map<String, dynamic> json) {
  return _PasskeyAttestationOptionsResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$PasskeyAttestationOptionsResponseDTO {
  String get requestId => throw _privateConstructorUsedError;
  PublicKeyDTO get publicKey => throw _privateConstructorUsedError;

  /// Serializes this PasskeyAttestationOptionsResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasskeyAttestationOptionsResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasskeyAttestationOptionsResponseDTOCopyWith<
          PasskeyAttestationOptionsResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasskeyAttestationOptionsResponseDTOCopyWith<$Res> {
  factory $PasskeyAttestationOptionsResponseDTOCopyWith(
          PasskeyAttestationOptionsResponseDTO value,
          $Res Function(PasskeyAttestationOptionsResponseDTO) then) =
      _$PasskeyAttestationOptionsResponseDTOCopyWithImpl<$Res,
          PasskeyAttestationOptionsResponseDTO>;
  @useResult
  $Res call({String requestId, PublicKeyDTO publicKey});

  $PublicKeyDTOCopyWith<$Res> get publicKey;
}

/// @nodoc
class _$PasskeyAttestationOptionsResponseDTOCopyWithImpl<$Res,
        $Val extends PasskeyAttestationOptionsResponseDTO>
    implements $PasskeyAttestationOptionsResponseDTOCopyWith<$Res> {
  _$PasskeyAttestationOptionsResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasskeyAttestationOptionsResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? publicKey = null,
  }) {
    return _then(_value.copyWith(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKeyDTO,
    ) as $Val);
  }

  /// Create a copy of PasskeyAttestationOptionsResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyDTOCopyWith<$Res> get publicKey {
    return $PublicKeyDTOCopyWith<$Res>(_value.publicKey, (value) {
      return _then(_value.copyWith(publicKey: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PasskeyAttestationOptionsResponseDTOImplCopyWith<$Res>
    implements $PasskeyAttestationOptionsResponseDTOCopyWith<$Res> {
  factory _$$PasskeyAttestationOptionsResponseDTOImplCopyWith(
          _$PasskeyAttestationOptionsResponseDTOImpl value,
          $Res Function(_$PasskeyAttestationOptionsResponseDTOImpl) then) =
      __$$PasskeyAttestationOptionsResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String requestId, PublicKeyDTO publicKey});

  @override
  $PublicKeyDTOCopyWith<$Res> get publicKey;
}

/// @nodoc
class __$$PasskeyAttestationOptionsResponseDTOImplCopyWithImpl<$Res>
    extends _$PasskeyAttestationOptionsResponseDTOCopyWithImpl<$Res,
        _$PasskeyAttestationOptionsResponseDTOImpl>
    implements _$$PasskeyAttestationOptionsResponseDTOImplCopyWith<$Res> {
  __$$PasskeyAttestationOptionsResponseDTOImplCopyWithImpl(
      _$PasskeyAttestationOptionsResponseDTOImpl _value,
      $Res Function(_$PasskeyAttestationOptionsResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasskeyAttestationOptionsResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? publicKey = null,
  }) {
    return _then(_$PasskeyAttestationOptionsResponseDTOImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKeyDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasskeyAttestationOptionsResponseDTOImpl
    implements _PasskeyAttestationOptionsResponseDTO {
  const _$PasskeyAttestationOptionsResponseDTOImpl(
      {required this.requestId, required this.publicKey});

  factory _$PasskeyAttestationOptionsResponseDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PasskeyAttestationOptionsResponseDTOImplFromJson(json);

  @override
  final String requestId;
  @override
  final PublicKeyDTO publicKey;

  @override
  String toString() {
    return 'PasskeyAttestationOptionsResponseDTO(requestId: $requestId, publicKey: $publicKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasskeyAttestationOptionsResponseDTOImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, requestId, publicKey);

  /// Create a copy of PasskeyAttestationOptionsResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasskeyAttestationOptionsResponseDTOImplCopyWith<
          _$PasskeyAttestationOptionsResponseDTOImpl>
      get copyWith => __$$PasskeyAttestationOptionsResponseDTOImplCopyWithImpl<
          _$PasskeyAttestationOptionsResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasskeyAttestationOptionsResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _PasskeyAttestationOptionsResponseDTO
    implements PasskeyAttestationOptionsResponseDTO {
  const factory _PasskeyAttestationOptionsResponseDTO(
          {required final String requestId,
          required final PublicKeyDTO publicKey}) =
      _$PasskeyAttestationOptionsResponseDTOImpl;

  factory _PasskeyAttestationOptionsResponseDTO.fromJson(
          Map<String, dynamic> json) =
      _$PasskeyAttestationOptionsResponseDTOImpl.fromJson;

  @override
  String get requestId;
  @override
  PublicKeyDTO get publicKey;

  /// Create a copy of PasskeyAttestationOptionsResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasskeyAttestationOptionsResponseDTOImplCopyWith<
          _$PasskeyAttestationOptionsResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PublicKeyDTO _$PublicKeyDTOFromJson(Map<String, dynamic> json) {
  return _PublicKeyDTO.fromJson(json);
}

/// @nodoc
mixin _$PublicKeyDTO {
  RpDTO get rp => throw _privateConstructorUsedError;
  UserDTO get user => throw _privateConstructorUsedError;
  String get challenge => throw _privateConstructorUsedError;
  List<PubKeyCredParamDTO> get pubKeyCredParams =>
      throw _privateConstructorUsedError;
  int get timeout => throw _privateConstructorUsedError;
  List<ExcludeCredentialDTO> get excludeCredentials =>
      throw _privateConstructorUsedError;
  AuthenticatorSelectionDTO get authenticatorSelection =>
      throw _privateConstructorUsedError;
  String get attestation => throw _privateConstructorUsedError;

  /// Serializes this PublicKeyDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PublicKeyDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PublicKeyDTOCopyWith<PublicKeyDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicKeyDTOCopyWith<$Res> {
  factory $PublicKeyDTOCopyWith(
          PublicKeyDTO value, $Res Function(PublicKeyDTO) then) =
      _$PublicKeyDTOCopyWithImpl<$Res, PublicKeyDTO>;
  @useResult
  $Res call(
      {RpDTO rp,
      UserDTO user,
      String challenge,
      List<PubKeyCredParamDTO> pubKeyCredParams,
      int timeout,
      List<ExcludeCredentialDTO> excludeCredentials,
      AuthenticatorSelectionDTO authenticatorSelection,
      String attestation});

  $RpDTOCopyWith<$Res> get rp;
  $UserDTOCopyWith<$Res> get user;
  $AuthenticatorSelectionDTOCopyWith<$Res> get authenticatorSelection;
}

/// @nodoc
class _$PublicKeyDTOCopyWithImpl<$Res, $Val extends PublicKeyDTO>
    implements $PublicKeyDTOCopyWith<$Res> {
  _$PublicKeyDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PublicKeyDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rp = null,
    Object? user = null,
    Object? challenge = null,
    Object? pubKeyCredParams = null,
    Object? timeout = null,
    Object? excludeCredentials = null,
    Object? authenticatorSelection = null,
    Object? attestation = null,
  }) {
    return _then(_value.copyWith(
      rp: null == rp
          ? _value.rp
          : rp // ignore: cast_nullable_to_non_nullable
              as RpDTO,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO,
      challenge: null == challenge
          ? _value.challenge
          : challenge // ignore: cast_nullable_to_non_nullable
              as String,
      pubKeyCredParams: null == pubKeyCredParams
          ? _value.pubKeyCredParams
          : pubKeyCredParams // ignore: cast_nullable_to_non_nullable
              as List<PubKeyCredParamDTO>,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as int,
      excludeCredentials: null == excludeCredentials
          ? _value.excludeCredentials
          : excludeCredentials // ignore: cast_nullable_to_non_nullable
              as List<ExcludeCredentialDTO>,
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

  /// Create a copy of PublicKeyDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RpDTOCopyWith<$Res> get rp {
    return $RpDTOCopyWith<$Res>(_value.rp, (value) {
      return _then(_value.copyWith(rp: value) as $Val);
    });
  }

  /// Create a copy of PublicKeyDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDTOCopyWith<$Res> get user {
    return $UserDTOCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of PublicKeyDTO
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
abstract class _$$PublicKeyDTOImplCopyWith<$Res>
    implements $PublicKeyDTOCopyWith<$Res> {
  factory _$$PublicKeyDTOImplCopyWith(
          _$PublicKeyDTOImpl value, $Res Function(_$PublicKeyDTOImpl) then) =
      __$$PublicKeyDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RpDTO rp,
      UserDTO user,
      String challenge,
      List<PubKeyCredParamDTO> pubKeyCredParams,
      int timeout,
      List<ExcludeCredentialDTO> excludeCredentials,
      AuthenticatorSelectionDTO authenticatorSelection,
      String attestation});

  @override
  $RpDTOCopyWith<$Res> get rp;
  @override
  $UserDTOCopyWith<$Res> get user;
  @override
  $AuthenticatorSelectionDTOCopyWith<$Res> get authenticatorSelection;
}

/// @nodoc
class __$$PublicKeyDTOImplCopyWithImpl<$Res>
    extends _$PublicKeyDTOCopyWithImpl<$Res, _$PublicKeyDTOImpl>
    implements _$$PublicKeyDTOImplCopyWith<$Res> {
  __$$PublicKeyDTOImplCopyWithImpl(
      _$PublicKeyDTOImpl _value, $Res Function(_$PublicKeyDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of PublicKeyDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rp = null,
    Object? user = null,
    Object? challenge = null,
    Object? pubKeyCredParams = null,
    Object? timeout = null,
    Object? excludeCredentials = null,
    Object? authenticatorSelection = null,
    Object? attestation = null,
  }) {
    return _then(_$PublicKeyDTOImpl(
      rp: null == rp
          ? _value.rp
          : rp // ignore: cast_nullable_to_non_nullable
              as RpDTO,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO,
      challenge: null == challenge
          ? _value.challenge
          : challenge // ignore: cast_nullable_to_non_nullable
              as String,
      pubKeyCredParams: null == pubKeyCredParams
          ? _value._pubKeyCredParams
          : pubKeyCredParams // ignore: cast_nullable_to_non_nullable
              as List<PubKeyCredParamDTO>,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as int,
      excludeCredentials: null == excludeCredentials
          ? _value._excludeCredentials
          : excludeCredentials // ignore: cast_nullable_to_non_nullable
              as List<ExcludeCredentialDTO>,
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
class _$PublicKeyDTOImpl implements _PublicKeyDTO {
  const _$PublicKeyDTOImpl(
      {required this.rp,
      required this.user,
      required this.challenge,
      required final List<PubKeyCredParamDTO> pubKeyCredParams,
      required this.timeout,
      required final List<ExcludeCredentialDTO> excludeCredentials,
      required this.authenticatorSelection,
      required this.attestation})
      : _pubKeyCredParams = pubKeyCredParams,
        _excludeCredentials = excludeCredentials;

  factory _$PublicKeyDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PublicKeyDTOImplFromJson(json);

  @override
  final RpDTO rp;
  @override
  final UserDTO user;
  @override
  final String challenge;
  final List<PubKeyCredParamDTO> _pubKeyCredParams;
  @override
  List<PubKeyCredParamDTO> get pubKeyCredParams {
    if (_pubKeyCredParams is EqualUnmodifiableListView)
      return _pubKeyCredParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pubKeyCredParams);
  }

  @override
  final int timeout;
  final List<ExcludeCredentialDTO> _excludeCredentials;
  @override
  List<ExcludeCredentialDTO> get excludeCredentials {
    if (_excludeCredentials is EqualUnmodifiableListView)
      return _excludeCredentials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_excludeCredentials);
  }

  @override
  final AuthenticatorSelectionDTO authenticatorSelection;
  @override
  final String attestation;

  @override
  String toString() {
    return 'PublicKeyDTO(rp: $rp, user: $user, challenge: $challenge, pubKeyCredParams: $pubKeyCredParams, timeout: $timeout, excludeCredentials: $excludeCredentials, authenticatorSelection: $authenticatorSelection, attestation: $attestation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicKeyDTOImpl &&
            (identical(other.rp, rp) || other.rp == rp) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.challenge, challenge) ||
                other.challenge == challenge) &&
            const DeepCollectionEquality()
                .equals(other._pubKeyCredParams, _pubKeyCredParams) &&
            (identical(other.timeout, timeout) || other.timeout == timeout) &&
            const DeepCollectionEquality()
                .equals(other._excludeCredentials, _excludeCredentials) &&
            (identical(other.authenticatorSelection, authenticatorSelection) ||
                other.authenticatorSelection == authenticatorSelection) &&
            (identical(other.attestation, attestation) ||
                other.attestation == attestation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      rp,
      user,
      challenge,
      const DeepCollectionEquality().hash(_pubKeyCredParams),
      timeout,
      const DeepCollectionEquality().hash(_excludeCredentials),
      authenticatorSelection,
      attestation);

  /// Create a copy of PublicKeyDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicKeyDTOImplCopyWith<_$PublicKeyDTOImpl> get copyWith =>
      __$$PublicKeyDTOImplCopyWithImpl<_$PublicKeyDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PublicKeyDTOImplToJson(
      this,
    );
  }
}

abstract class _PublicKeyDTO implements PublicKeyDTO {
  const factory _PublicKeyDTO(
      {required final RpDTO rp,
      required final UserDTO user,
      required final String challenge,
      required final List<PubKeyCredParamDTO> pubKeyCredParams,
      required final int timeout,
      required final List<ExcludeCredentialDTO> excludeCredentials,
      required final AuthenticatorSelectionDTO authenticatorSelection,
      required final String attestation}) = _$PublicKeyDTOImpl;

  factory _PublicKeyDTO.fromJson(Map<String, dynamic> json) =
      _$PublicKeyDTOImpl.fromJson;

  @override
  RpDTO get rp;
  @override
  UserDTO get user;
  @override
  String get challenge;
  @override
  List<PubKeyCredParamDTO> get pubKeyCredParams;
  @override
  int get timeout;
  @override
  List<ExcludeCredentialDTO> get excludeCredentials;
  @override
  AuthenticatorSelectionDTO get authenticatorSelection;
  @override
  String get attestation;

  /// Create a copy of PublicKeyDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PublicKeyDTOImplCopyWith<_$PublicKeyDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RpDTO _$RpDTOFromJson(Map<String, dynamic> json) {
  return _RpDTO.fromJson(json);
}

/// @nodoc
mixin _$RpDTO {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  /// Serializes this RpDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RpDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RpDTOCopyWith<RpDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RpDTOCopyWith<$Res> {
  factory $RpDTOCopyWith(RpDTO value, $Res Function(RpDTO) then) =
      _$RpDTOCopyWithImpl<$Res, RpDTO>;
  @useResult
  $Res call({String name, String id});
}

/// @nodoc
class _$RpDTOCopyWithImpl<$Res, $Val extends RpDTO>
    implements $RpDTOCopyWith<$Res> {
  _$RpDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RpDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RpDTOImplCopyWith<$Res> implements $RpDTOCopyWith<$Res> {
  factory _$$RpDTOImplCopyWith(
          _$RpDTOImpl value, $Res Function(_$RpDTOImpl) then) =
      __$$RpDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String id});
}

/// @nodoc
class __$$RpDTOImplCopyWithImpl<$Res>
    extends _$RpDTOCopyWithImpl<$Res, _$RpDTOImpl>
    implements _$$RpDTOImplCopyWith<$Res> {
  __$$RpDTOImplCopyWithImpl(
      _$RpDTOImpl _value, $Res Function(_$RpDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of RpDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_$RpDTOImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RpDTOImpl implements _RpDTO {
  const _$RpDTOImpl({required this.name, required this.id});

  factory _$RpDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RpDTOImplFromJson(json);

  @override
  final String name;
  @override
  final String id;

  @override
  String toString() {
    return 'RpDTO(name: $name, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RpDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  /// Create a copy of RpDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RpDTOImplCopyWith<_$RpDTOImpl> get copyWith =>
      __$$RpDTOImplCopyWithImpl<_$RpDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RpDTOImplToJson(
      this,
    );
  }
}

abstract class _RpDTO implements RpDTO {
  const factory _RpDTO({required final String name, required final String id}) =
      _$RpDTOImpl;

  factory _RpDTO.fromJson(Map<String, dynamic> json) = _$RpDTOImpl.fromJson;

  @override
  String get name;
  @override
  String get id;

  /// Create a copy of RpDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RpDTOImplCopyWith<_$RpDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) {
  return _UserDTO.fromJson(json);
}

/// @nodoc
mixin _$UserDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;

  /// Serializes this UserDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDTOCopyWith<UserDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res, UserDTO>;
  @useResult
  $Res call({String id, String name, String displayName});
}

/// @nodoc
class _$UserDTOCopyWithImpl<$Res, $Val extends UserDTO>
    implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? displayName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDTOImplCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$$UserDTOImplCopyWith(
          _$UserDTOImpl value, $Res Function(_$UserDTOImpl) then) =
      __$$UserDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String displayName});
}

/// @nodoc
class __$$UserDTOImplCopyWithImpl<$Res>
    extends _$UserDTOCopyWithImpl<$Res, _$UserDTOImpl>
    implements _$$UserDTOImplCopyWith<$Res> {
  __$$UserDTOImplCopyWithImpl(
      _$UserDTOImpl _value, $Res Function(_$UserDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? displayName = null,
  }) {
    return _then(_$UserDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDTOImpl implements _UserDTO {
  const _$UserDTOImpl(
      {required this.id, required this.name, required this.displayName});

  factory _$UserDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDTOImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String displayName;

  @override
  String toString() {
    return 'UserDTO(id: $id, name: $name, displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, displayName);

  /// Create a copy of UserDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDTOImplCopyWith<_$UserDTOImpl> get copyWith =>
      __$$UserDTOImplCopyWithImpl<_$UserDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDTOImplToJson(
      this,
    );
  }
}

abstract class _UserDTO implements UserDTO {
  const factory _UserDTO(
      {required final String id,
      required final String name,
      required final String displayName}) = _$UserDTOImpl;

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$UserDTOImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get displayName;

  /// Create a copy of UserDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDTOImplCopyWith<_$UserDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PubKeyCredParamDTO _$PubKeyCredParamDTOFromJson(Map<String, dynamic> json) {
  return _PubKeyCredParamDTO.fromJson(json);
}

/// @nodoc
mixin _$PubKeyCredParamDTO {
  String get type => throw _privateConstructorUsedError;
  int get alg => throw _privateConstructorUsedError;

  /// Serializes this PubKeyCredParamDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PubKeyCredParamDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PubKeyCredParamDTOCopyWith<PubKeyCredParamDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PubKeyCredParamDTOCopyWith<$Res> {
  factory $PubKeyCredParamDTOCopyWith(
          PubKeyCredParamDTO value, $Res Function(PubKeyCredParamDTO) then) =
      _$PubKeyCredParamDTOCopyWithImpl<$Res, PubKeyCredParamDTO>;
  @useResult
  $Res call({String type, int alg});
}

/// @nodoc
class _$PubKeyCredParamDTOCopyWithImpl<$Res, $Val extends PubKeyCredParamDTO>
    implements $PubKeyCredParamDTOCopyWith<$Res> {
  _$PubKeyCredParamDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PubKeyCredParamDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? alg = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      alg: null == alg
          ? _value.alg
          : alg // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PubKeyCredParamDTOImplCopyWith<$Res>
    implements $PubKeyCredParamDTOCopyWith<$Res> {
  factory _$$PubKeyCredParamDTOImplCopyWith(_$PubKeyCredParamDTOImpl value,
          $Res Function(_$PubKeyCredParamDTOImpl) then) =
      __$$PubKeyCredParamDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, int alg});
}

/// @nodoc
class __$$PubKeyCredParamDTOImplCopyWithImpl<$Res>
    extends _$PubKeyCredParamDTOCopyWithImpl<$Res, _$PubKeyCredParamDTOImpl>
    implements _$$PubKeyCredParamDTOImplCopyWith<$Res> {
  __$$PubKeyCredParamDTOImplCopyWithImpl(_$PubKeyCredParamDTOImpl _value,
      $Res Function(_$PubKeyCredParamDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of PubKeyCredParamDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? alg = null,
  }) {
    return _then(_$PubKeyCredParamDTOImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      alg: null == alg
          ? _value.alg
          : alg // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PubKeyCredParamDTOImpl implements _PubKeyCredParamDTO {
  const _$PubKeyCredParamDTOImpl({required this.type, required this.alg});

  factory _$PubKeyCredParamDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PubKeyCredParamDTOImplFromJson(json);

  @override
  final String type;
  @override
  final int alg;

  @override
  String toString() {
    return 'PubKeyCredParamDTO(type: $type, alg: $alg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PubKeyCredParamDTOImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.alg, alg) || other.alg == alg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, alg);

  /// Create a copy of PubKeyCredParamDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PubKeyCredParamDTOImplCopyWith<_$PubKeyCredParamDTOImpl> get copyWith =>
      __$$PubKeyCredParamDTOImplCopyWithImpl<_$PubKeyCredParamDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PubKeyCredParamDTOImplToJson(
      this,
    );
  }
}

abstract class _PubKeyCredParamDTO implements PubKeyCredParamDTO {
  const factory _PubKeyCredParamDTO(
      {required final String type,
      required final int alg}) = _$PubKeyCredParamDTOImpl;

  factory _PubKeyCredParamDTO.fromJson(Map<String, dynamic> json) =
      _$PubKeyCredParamDTOImpl.fromJson;

  @override
  String get type;
  @override
  int get alg;

  /// Create a copy of PubKeyCredParamDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PubKeyCredParamDTOImplCopyWith<_$PubKeyCredParamDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExcludeCredentialDTO _$ExcludeCredentialDTOFromJson(Map<String, dynamic> json) {
  return _ExcludeCredentialDTO.fromJson(json);
}

/// @nodoc
mixin _$ExcludeCredentialDTO {
  String get type => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  /// Serializes this ExcludeCredentialDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExcludeCredentialDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExcludeCredentialDTOCopyWith<ExcludeCredentialDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExcludeCredentialDTOCopyWith<$Res> {
  factory $ExcludeCredentialDTOCopyWith(ExcludeCredentialDTO value,
          $Res Function(ExcludeCredentialDTO) then) =
      _$ExcludeCredentialDTOCopyWithImpl<$Res, ExcludeCredentialDTO>;
  @useResult
  $Res call({String type, String id});
}

/// @nodoc
class _$ExcludeCredentialDTOCopyWithImpl<$Res,
        $Val extends ExcludeCredentialDTO>
    implements $ExcludeCredentialDTOCopyWith<$Res> {
  _$ExcludeCredentialDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExcludeCredentialDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExcludeCredentialDTOImplCopyWith<$Res>
    implements $ExcludeCredentialDTOCopyWith<$Res> {
  factory _$$ExcludeCredentialDTOImplCopyWith(_$ExcludeCredentialDTOImpl value,
          $Res Function(_$ExcludeCredentialDTOImpl) then) =
      __$$ExcludeCredentialDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String id});
}

/// @nodoc
class __$$ExcludeCredentialDTOImplCopyWithImpl<$Res>
    extends _$ExcludeCredentialDTOCopyWithImpl<$Res, _$ExcludeCredentialDTOImpl>
    implements _$$ExcludeCredentialDTOImplCopyWith<$Res> {
  __$$ExcludeCredentialDTOImplCopyWithImpl(_$ExcludeCredentialDTOImpl _value,
      $Res Function(_$ExcludeCredentialDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExcludeCredentialDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
  }) {
    return _then(_$ExcludeCredentialDTOImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExcludeCredentialDTOImpl implements _ExcludeCredentialDTO {
  const _$ExcludeCredentialDTOImpl({required this.type, required this.id});

  factory _$ExcludeCredentialDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExcludeCredentialDTOImplFromJson(json);

  @override
  final String type;
  @override
  final String id;

  @override
  String toString() {
    return 'ExcludeCredentialDTO(type: $type, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExcludeCredentialDTOImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, id);

  /// Create a copy of ExcludeCredentialDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExcludeCredentialDTOImplCopyWith<_$ExcludeCredentialDTOImpl>
      get copyWith =>
          __$$ExcludeCredentialDTOImplCopyWithImpl<_$ExcludeCredentialDTOImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExcludeCredentialDTOImplToJson(
      this,
    );
  }
}

abstract class _ExcludeCredentialDTO implements ExcludeCredentialDTO {
  const factory _ExcludeCredentialDTO(
      {required final String type,
      required final String id}) = _$ExcludeCredentialDTOImpl;

  factory _ExcludeCredentialDTO.fromJson(Map<String, dynamic> json) =
      _$ExcludeCredentialDTOImpl.fromJson;

  @override
  String get type;
  @override
  String get id;

  /// Create a copy of ExcludeCredentialDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExcludeCredentialDTOImplCopyWith<_$ExcludeCredentialDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
