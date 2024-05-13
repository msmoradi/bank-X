// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passkey_attestation_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PasskeyAttestationOptions _$PasskeyAttestationOptionsFromJson(
    Map<String, dynamic> json) {
  return _PasskeyAttestationOptions.fromJson(json);
}

/// @nodoc
mixin _$PasskeyAttestationOptions {
  String get requestId => throw _privateConstructorUsedError;
  PublicKey get publicKey => throw _privateConstructorUsedError;

  /// Serializes this PasskeyAttestationOptions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasskeyAttestationOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasskeyAttestationOptionsCopyWith<PasskeyAttestationOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasskeyAttestationOptionsCopyWith<$Res> {
  factory $PasskeyAttestationOptionsCopyWith(PasskeyAttestationOptions value,
          $Res Function(PasskeyAttestationOptions) then) =
      _$PasskeyAttestationOptionsCopyWithImpl<$Res, PasskeyAttestationOptions>;
  @useResult
  $Res call({String requestId, PublicKey publicKey});

  $PublicKeyCopyWith<$Res> get publicKey;
}

/// @nodoc
class _$PasskeyAttestationOptionsCopyWithImpl<$Res,
        $Val extends PasskeyAttestationOptions>
    implements $PasskeyAttestationOptionsCopyWith<$Res> {
  _$PasskeyAttestationOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasskeyAttestationOptions
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
              as PublicKey,
    ) as $Val);
  }

  /// Create a copy of PasskeyAttestationOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_value.publicKey, (value) {
      return _then(_value.copyWith(publicKey: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PasskeyAttestationOptionsImplCopyWith<$Res>
    implements $PasskeyAttestationOptionsCopyWith<$Res> {
  factory _$$PasskeyAttestationOptionsImplCopyWith(
          _$PasskeyAttestationOptionsImpl value,
          $Res Function(_$PasskeyAttestationOptionsImpl) then) =
      __$$PasskeyAttestationOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String requestId, PublicKey publicKey});

  @override
  $PublicKeyCopyWith<$Res> get publicKey;
}

/// @nodoc
class __$$PasskeyAttestationOptionsImplCopyWithImpl<$Res>
    extends _$PasskeyAttestationOptionsCopyWithImpl<$Res,
        _$PasskeyAttestationOptionsImpl>
    implements _$$PasskeyAttestationOptionsImplCopyWith<$Res> {
  __$$PasskeyAttestationOptionsImplCopyWithImpl(
      _$PasskeyAttestationOptionsImpl _value,
      $Res Function(_$PasskeyAttestationOptionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasskeyAttestationOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? publicKey = null,
  }) {
    return _then(_$PasskeyAttestationOptionsImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasskeyAttestationOptionsImpl implements _PasskeyAttestationOptions {
  const _$PasskeyAttestationOptionsImpl(
      {required this.requestId, required this.publicKey});

  factory _$PasskeyAttestationOptionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasskeyAttestationOptionsImplFromJson(json);

  @override
  final String requestId;
  @override
  final PublicKey publicKey;

  @override
  String toString() {
    return 'PasskeyAttestationOptions(requestId: $requestId, publicKey: $publicKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasskeyAttestationOptionsImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, requestId, publicKey);

  /// Create a copy of PasskeyAttestationOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasskeyAttestationOptionsImplCopyWith<_$PasskeyAttestationOptionsImpl>
      get copyWith => __$$PasskeyAttestationOptionsImplCopyWithImpl<
          _$PasskeyAttestationOptionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasskeyAttestationOptionsImplToJson(
      this,
    );
  }
}

abstract class _PasskeyAttestationOptions implements PasskeyAttestationOptions {
  const factory _PasskeyAttestationOptions(
      {required final String requestId,
      required final PublicKey publicKey}) = _$PasskeyAttestationOptionsImpl;

  factory _PasskeyAttestationOptions.fromJson(Map<String, dynamic> json) =
      _$PasskeyAttestationOptionsImpl.fromJson;

  @override
  String get requestId;
  @override
  PublicKey get publicKey;

  /// Create a copy of PasskeyAttestationOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasskeyAttestationOptionsImplCopyWith<_$PasskeyAttestationOptionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PublicKey _$PublicKeyFromJson(Map<String, dynamic> json) {
  return _PublicKey.fromJson(json);
}

/// @nodoc
mixin _$PublicKey {
  Rp get rp => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  String get challenge => throw _privateConstructorUsedError;
  List<PubKeyCredParam> get pubKeyCredParams =>
      throw _privateConstructorUsedError;
  int get timeout => throw _privateConstructorUsedError;
  List<ExcludeCredential> get excludeCredentials =>
      throw _privateConstructorUsedError;
  AuthenticatorSelection get authenticatorSelection =>
      throw _privateConstructorUsedError;
  String get attestation => throw _privateConstructorUsedError;

  /// Serializes this PublicKey to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PublicKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PublicKeyCopyWith<PublicKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicKeyCopyWith<$Res> {
  factory $PublicKeyCopyWith(PublicKey value, $Res Function(PublicKey) then) =
      _$PublicKeyCopyWithImpl<$Res, PublicKey>;
  @useResult
  $Res call(
      {Rp rp,
      User user,
      String challenge,
      List<PubKeyCredParam> pubKeyCredParams,
      int timeout,
      List<ExcludeCredential> excludeCredentials,
      AuthenticatorSelection authenticatorSelection,
      String attestation});

  $RpCopyWith<$Res> get rp;
  $UserCopyWith<$Res> get user;
  $AuthenticatorSelectionCopyWith<$Res> get authenticatorSelection;
}

/// @nodoc
class _$PublicKeyCopyWithImpl<$Res, $Val extends PublicKey>
    implements $PublicKeyCopyWith<$Res> {
  _$PublicKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PublicKey
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
              as Rp,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      challenge: null == challenge
          ? _value.challenge
          : challenge // ignore: cast_nullable_to_non_nullable
              as String,
      pubKeyCredParams: null == pubKeyCredParams
          ? _value.pubKeyCredParams
          : pubKeyCredParams // ignore: cast_nullable_to_non_nullable
              as List<PubKeyCredParam>,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as int,
      excludeCredentials: null == excludeCredentials
          ? _value.excludeCredentials
          : excludeCredentials // ignore: cast_nullable_to_non_nullable
              as List<ExcludeCredential>,
      authenticatorSelection: null == authenticatorSelection
          ? _value.authenticatorSelection
          : authenticatorSelection // ignore: cast_nullable_to_non_nullable
              as AuthenticatorSelection,
      attestation: null == attestation
          ? _value.attestation
          : attestation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of PublicKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RpCopyWith<$Res> get rp {
    return $RpCopyWith<$Res>(_value.rp, (value) {
      return _then(_value.copyWith(rp: value) as $Val);
    });
  }

  /// Create a copy of PublicKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of PublicKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthenticatorSelectionCopyWith<$Res> get authenticatorSelection {
    return $AuthenticatorSelectionCopyWith<$Res>(_value.authenticatorSelection,
        (value) {
      return _then(_value.copyWith(authenticatorSelection: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PublicKeyImplCopyWith<$Res>
    implements $PublicKeyCopyWith<$Res> {
  factory _$$PublicKeyImplCopyWith(
          _$PublicKeyImpl value, $Res Function(_$PublicKeyImpl) then) =
      __$$PublicKeyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Rp rp,
      User user,
      String challenge,
      List<PubKeyCredParam> pubKeyCredParams,
      int timeout,
      List<ExcludeCredential> excludeCredentials,
      AuthenticatorSelection authenticatorSelection,
      String attestation});

  @override
  $RpCopyWith<$Res> get rp;
  @override
  $UserCopyWith<$Res> get user;
  @override
  $AuthenticatorSelectionCopyWith<$Res> get authenticatorSelection;
}

/// @nodoc
class __$$PublicKeyImplCopyWithImpl<$Res>
    extends _$PublicKeyCopyWithImpl<$Res, _$PublicKeyImpl>
    implements _$$PublicKeyImplCopyWith<$Res> {
  __$$PublicKeyImplCopyWithImpl(
      _$PublicKeyImpl _value, $Res Function(_$PublicKeyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PublicKey
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
    return _then(_$PublicKeyImpl(
      rp: null == rp
          ? _value.rp
          : rp // ignore: cast_nullable_to_non_nullable
              as Rp,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      challenge: null == challenge
          ? _value.challenge
          : challenge // ignore: cast_nullable_to_non_nullable
              as String,
      pubKeyCredParams: null == pubKeyCredParams
          ? _value._pubKeyCredParams
          : pubKeyCredParams // ignore: cast_nullable_to_non_nullable
              as List<PubKeyCredParam>,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as int,
      excludeCredentials: null == excludeCredentials
          ? _value._excludeCredentials
          : excludeCredentials // ignore: cast_nullable_to_non_nullable
              as List<ExcludeCredential>,
      authenticatorSelection: null == authenticatorSelection
          ? _value.authenticatorSelection
          : authenticatorSelection // ignore: cast_nullable_to_non_nullable
              as AuthenticatorSelection,
      attestation: null == attestation
          ? _value.attestation
          : attestation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PublicKeyImpl implements _PublicKey {
  const _$PublicKeyImpl(
      {required this.rp,
      required this.user,
      required this.challenge,
      required final List<PubKeyCredParam> pubKeyCredParams,
      required this.timeout,
      required final List<ExcludeCredential> excludeCredentials,
      required this.authenticatorSelection,
      required this.attestation})
      : _pubKeyCredParams = pubKeyCredParams,
        _excludeCredentials = excludeCredentials;

  factory _$PublicKeyImpl.fromJson(Map<String, dynamic> json) =>
      _$$PublicKeyImplFromJson(json);

  @override
  final Rp rp;
  @override
  final User user;
  @override
  final String challenge;
  final List<PubKeyCredParam> _pubKeyCredParams;
  @override
  List<PubKeyCredParam> get pubKeyCredParams {
    if (_pubKeyCredParams is EqualUnmodifiableListView)
      return _pubKeyCredParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pubKeyCredParams);
  }

  @override
  final int timeout;
  final List<ExcludeCredential> _excludeCredentials;
  @override
  List<ExcludeCredential> get excludeCredentials {
    if (_excludeCredentials is EqualUnmodifiableListView)
      return _excludeCredentials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_excludeCredentials);
  }

  @override
  final AuthenticatorSelection authenticatorSelection;
  @override
  final String attestation;

  @override
  String toString() {
    return 'PublicKey(rp: $rp, user: $user, challenge: $challenge, pubKeyCredParams: $pubKeyCredParams, timeout: $timeout, excludeCredentials: $excludeCredentials, authenticatorSelection: $authenticatorSelection, attestation: $attestation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicKeyImpl &&
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

  /// Create a copy of PublicKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicKeyImplCopyWith<_$PublicKeyImpl> get copyWith =>
      __$$PublicKeyImplCopyWithImpl<_$PublicKeyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PublicKeyImplToJson(
      this,
    );
  }
}

abstract class _PublicKey implements PublicKey {
  const factory _PublicKey(
      {required final Rp rp,
      required final User user,
      required final String challenge,
      required final List<PubKeyCredParam> pubKeyCredParams,
      required final int timeout,
      required final List<ExcludeCredential> excludeCredentials,
      required final AuthenticatorSelection authenticatorSelection,
      required final String attestation}) = _$PublicKeyImpl;

  factory _PublicKey.fromJson(Map<String, dynamic> json) =
      _$PublicKeyImpl.fromJson;

  @override
  Rp get rp;
  @override
  User get user;
  @override
  String get challenge;
  @override
  List<PubKeyCredParam> get pubKeyCredParams;
  @override
  int get timeout;
  @override
  List<ExcludeCredential> get excludeCredentials;
  @override
  AuthenticatorSelection get authenticatorSelection;
  @override
  String get attestation;

  /// Create a copy of PublicKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PublicKeyImplCopyWith<_$PublicKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Rp _$RpFromJson(Map<String, dynamic> json) {
  return _Rp.fromJson(json);
}

/// @nodoc
mixin _$Rp {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  /// Serializes this Rp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Rp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RpCopyWith<Rp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RpCopyWith<$Res> {
  factory $RpCopyWith(Rp value, $Res Function(Rp) then) =
      _$RpCopyWithImpl<$Res, Rp>;
  @useResult
  $Res call({String name, String id});
}

/// @nodoc
class _$RpCopyWithImpl<$Res, $Val extends Rp> implements $RpCopyWith<$Res> {
  _$RpCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Rp
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
abstract class _$$RpImplCopyWith<$Res> implements $RpCopyWith<$Res> {
  factory _$$RpImplCopyWith(_$RpImpl value, $Res Function(_$RpImpl) then) =
      __$$RpImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String id});
}

/// @nodoc
class __$$RpImplCopyWithImpl<$Res> extends _$RpCopyWithImpl<$Res, _$RpImpl>
    implements _$$RpImplCopyWith<$Res> {
  __$$RpImplCopyWithImpl(_$RpImpl _value, $Res Function(_$RpImpl) _then)
      : super(_value, _then);

  /// Create a copy of Rp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_$RpImpl(
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
class _$RpImpl implements _Rp {
  const _$RpImpl({required this.name, required this.id});

  factory _$RpImpl.fromJson(Map<String, dynamic> json) =>
      _$$RpImplFromJson(json);

  @override
  final String name;
  @override
  final String id;

  @override
  String toString() {
    return 'Rp(name: $name, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RpImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  /// Create a copy of Rp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RpImplCopyWith<_$RpImpl> get copyWith =>
      __$$RpImplCopyWithImpl<_$RpImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RpImplToJson(
      this,
    );
  }
}

abstract class _Rp implements Rp {
  const factory _Rp({required final String name, required final String id}) =
      _$RpImpl;

  factory _Rp.fromJson(Map<String, dynamic> json) = _$RpImpl.fromJson;

  @override
  String get name;
  @override
  String get id;

  /// Create a copy of Rp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RpImplCopyWith<_$RpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({String id, String name, String displayName});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
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
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String displayName});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? displayName = null,
  }) {
    return _then(_$UserImpl(
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
class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.id, required this.name, required this.displayName});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String displayName;

  @override
  String toString() {
    return 'User(id: $id, name: $name, displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, displayName);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final String id,
      required final String name,
      required final String displayName}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get displayName;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PubKeyCredParam _$PubKeyCredParamFromJson(Map<String, dynamic> json) {
  return _PubKeyCredParam.fromJson(json);
}

/// @nodoc
mixin _$PubKeyCredParam {
  String get type => throw _privateConstructorUsedError;
  int get alg => throw _privateConstructorUsedError;

  /// Serializes this PubKeyCredParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PubKeyCredParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PubKeyCredParamCopyWith<PubKeyCredParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PubKeyCredParamCopyWith<$Res> {
  factory $PubKeyCredParamCopyWith(
          PubKeyCredParam value, $Res Function(PubKeyCredParam) then) =
      _$PubKeyCredParamCopyWithImpl<$Res, PubKeyCredParam>;
  @useResult
  $Res call({String type, int alg});
}

/// @nodoc
class _$PubKeyCredParamCopyWithImpl<$Res, $Val extends PubKeyCredParam>
    implements $PubKeyCredParamCopyWith<$Res> {
  _$PubKeyCredParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PubKeyCredParam
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
abstract class _$$PubKeyCredParamImplCopyWith<$Res>
    implements $PubKeyCredParamCopyWith<$Res> {
  factory _$$PubKeyCredParamImplCopyWith(_$PubKeyCredParamImpl value,
          $Res Function(_$PubKeyCredParamImpl) then) =
      __$$PubKeyCredParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, int alg});
}

/// @nodoc
class __$$PubKeyCredParamImplCopyWithImpl<$Res>
    extends _$PubKeyCredParamCopyWithImpl<$Res, _$PubKeyCredParamImpl>
    implements _$$PubKeyCredParamImplCopyWith<$Res> {
  __$$PubKeyCredParamImplCopyWithImpl(
      _$PubKeyCredParamImpl _value, $Res Function(_$PubKeyCredParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of PubKeyCredParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? alg = null,
  }) {
    return _then(_$PubKeyCredParamImpl(
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
class _$PubKeyCredParamImpl implements _PubKeyCredParam {
  const _$PubKeyCredParamImpl({required this.type, required this.alg});

  factory _$PubKeyCredParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$PubKeyCredParamImplFromJson(json);

  @override
  final String type;
  @override
  final int alg;

  @override
  String toString() {
    return 'PubKeyCredParam(type: $type, alg: $alg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PubKeyCredParamImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.alg, alg) || other.alg == alg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, alg);

  /// Create a copy of PubKeyCredParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PubKeyCredParamImplCopyWith<_$PubKeyCredParamImpl> get copyWith =>
      __$$PubKeyCredParamImplCopyWithImpl<_$PubKeyCredParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PubKeyCredParamImplToJson(
      this,
    );
  }
}

abstract class _PubKeyCredParam implements PubKeyCredParam {
  const factory _PubKeyCredParam(
      {required final String type,
      required final int alg}) = _$PubKeyCredParamImpl;

  factory _PubKeyCredParam.fromJson(Map<String, dynamic> json) =
      _$PubKeyCredParamImpl.fromJson;

  @override
  String get type;
  @override
  int get alg;

  /// Create a copy of PubKeyCredParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PubKeyCredParamImplCopyWith<_$PubKeyCredParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExcludeCredential _$ExcludeCredentialFromJson(Map<String, dynamic> json) {
  return _ExcludeCredential.fromJson(json);
}

/// @nodoc
mixin _$ExcludeCredential {
  String get type => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  /// Serializes this ExcludeCredential to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExcludeCredential
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExcludeCredentialCopyWith<ExcludeCredential> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExcludeCredentialCopyWith<$Res> {
  factory $ExcludeCredentialCopyWith(
          ExcludeCredential value, $Res Function(ExcludeCredential) then) =
      _$ExcludeCredentialCopyWithImpl<$Res, ExcludeCredential>;
  @useResult
  $Res call({String type, String id});
}

/// @nodoc
class _$ExcludeCredentialCopyWithImpl<$Res, $Val extends ExcludeCredential>
    implements $ExcludeCredentialCopyWith<$Res> {
  _$ExcludeCredentialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExcludeCredential
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
abstract class _$$ExcludeCredentialImplCopyWith<$Res>
    implements $ExcludeCredentialCopyWith<$Res> {
  factory _$$ExcludeCredentialImplCopyWith(_$ExcludeCredentialImpl value,
          $Res Function(_$ExcludeCredentialImpl) then) =
      __$$ExcludeCredentialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String id});
}

/// @nodoc
class __$$ExcludeCredentialImplCopyWithImpl<$Res>
    extends _$ExcludeCredentialCopyWithImpl<$Res, _$ExcludeCredentialImpl>
    implements _$$ExcludeCredentialImplCopyWith<$Res> {
  __$$ExcludeCredentialImplCopyWithImpl(_$ExcludeCredentialImpl _value,
      $Res Function(_$ExcludeCredentialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExcludeCredential
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
  }) {
    return _then(_$ExcludeCredentialImpl(
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
class _$ExcludeCredentialImpl implements _ExcludeCredential {
  const _$ExcludeCredentialImpl({required this.type, required this.id});

  factory _$ExcludeCredentialImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExcludeCredentialImplFromJson(json);

  @override
  final String type;
  @override
  final String id;

  @override
  String toString() {
    return 'ExcludeCredential(type: $type, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExcludeCredentialImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, id);

  /// Create a copy of ExcludeCredential
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExcludeCredentialImplCopyWith<_$ExcludeCredentialImpl> get copyWith =>
      __$$ExcludeCredentialImplCopyWithImpl<_$ExcludeCredentialImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExcludeCredentialImplToJson(
      this,
    );
  }
}

abstract class _ExcludeCredential implements ExcludeCredential {
  const factory _ExcludeCredential(
      {required final String type,
      required final String id}) = _$ExcludeCredentialImpl;

  factory _ExcludeCredential.fromJson(Map<String, dynamic> json) =
      _$ExcludeCredentialImpl.fromJson;

  @override
  String get type;
  @override
  String get id;

  /// Create a copy of ExcludeCredential
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExcludeCredentialImplCopyWith<_$ExcludeCredentialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthenticatorSelection _$AuthenticatorSelectionFromJson(
    Map<String, dynamic> json) {
  return _AuthenticatorSelection.fromJson(json);
}

/// @nodoc
mixin _$AuthenticatorSelection {
  String get residentKey => throw _privateConstructorUsedError;
  String get authenticatorAttachment => throw _privateConstructorUsedError;
  String get userVerification => throw _privateConstructorUsedError;

  /// Serializes this AuthenticatorSelection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthenticatorSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthenticatorSelectionCopyWith<AuthenticatorSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatorSelectionCopyWith<$Res> {
  factory $AuthenticatorSelectionCopyWith(AuthenticatorSelection value,
          $Res Function(AuthenticatorSelection) then) =
      _$AuthenticatorSelectionCopyWithImpl<$Res, AuthenticatorSelection>;
  @useResult
  $Res call(
      {String residentKey,
      String authenticatorAttachment,
      String userVerification});
}

/// @nodoc
class _$AuthenticatorSelectionCopyWithImpl<$Res,
        $Val extends AuthenticatorSelection>
    implements $AuthenticatorSelectionCopyWith<$Res> {
  _$AuthenticatorSelectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticatorSelection
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
abstract class _$$AuthenticatorSelectionImplCopyWith<$Res>
    implements $AuthenticatorSelectionCopyWith<$Res> {
  factory _$$AuthenticatorSelectionImplCopyWith(
          _$AuthenticatorSelectionImpl value,
          $Res Function(_$AuthenticatorSelectionImpl) then) =
      __$$AuthenticatorSelectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String residentKey,
      String authenticatorAttachment,
      String userVerification});
}

/// @nodoc
class __$$AuthenticatorSelectionImplCopyWithImpl<$Res>
    extends _$AuthenticatorSelectionCopyWithImpl<$Res,
        _$AuthenticatorSelectionImpl>
    implements _$$AuthenticatorSelectionImplCopyWith<$Res> {
  __$$AuthenticatorSelectionImplCopyWithImpl(
      _$AuthenticatorSelectionImpl _value,
      $Res Function(_$AuthenticatorSelectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticatorSelection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentKey = null,
    Object? authenticatorAttachment = null,
    Object? userVerification = null,
  }) {
    return _then(_$AuthenticatorSelectionImpl(
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
class _$AuthenticatorSelectionImpl implements _AuthenticatorSelection {
  const _$AuthenticatorSelectionImpl(
      {required this.residentKey,
      required this.authenticatorAttachment,
      required this.userVerification});

  factory _$AuthenticatorSelectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticatorSelectionImplFromJson(json);

  @override
  final String residentKey;
  @override
  final String authenticatorAttachment;
  @override
  final String userVerification;

  @override
  String toString() {
    return 'AuthenticatorSelection(residentKey: $residentKey, authenticatorAttachment: $authenticatorAttachment, userVerification: $userVerification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatorSelectionImpl &&
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

  /// Create a copy of AuthenticatorSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatorSelectionImplCopyWith<_$AuthenticatorSelectionImpl>
      get copyWith => __$$AuthenticatorSelectionImplCopyWithImpl<
          _$AuthenticatorSelectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticatorSelectionImplToJson(
      this,
    );
  }
}

abstract class _AuthenticatorSelection implements AuthenticatorSelection {
  const factory _AuthenticatorSelection(
      {required final String residentKey,
      required final String authenticatorAttachment,
      required final String userVerification}) = _$AuthenticatorSelectionImpl;

  factory _AuthenticatorSelection.fromJson(Map<String, dynamic> json) =
      _$AuthenticatorSelectionImpl.fromJson;

  @override
  String get residentKey;
  @override
  String get authenticatorAttachment;
  @override
  String get userVerification;

  /// Create a copy of AuthenticatorSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticatorSelectionImplCopyWith<_$AuthenticatorSelectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
