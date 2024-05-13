// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passkey_attestation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PasskeyAttestation _$PasskeyAttestationFromJson(Map<String, dynamic> json) {
  return _PasskeyAttestation.fromJson(json);
}

/// @nodoc
mixin _$PasskeyAttestation {
  String get status => throw _privateConstructorUsedError;
  Credential get credential => throw _privateConstructorUsedError;

  /// Serializes this PasskeyAttestation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasskeyAttestation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasskeyAttestationCopyWith<PasskeyAttestation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasskeyAttestationCopyWith<$Res> {
  factory $PasskeyAttestationCopyWith(
          PasskeyAttestation value, $Res Function(PasskeyAttestation) then) =
      _$PasskeyAttestationCopyWithImpl<$Res, PasskeyAttestation>;
  @useResult
  $Res call({String status, Credential credential});

  $CredentialCopyWith<$Res> get credential;
}

/// @nodoc
class _$PasskeyAttestationCopyWithImpl<$Res, $Val extends PasskeyAttestation>
    implements $PasskeyAttestationCopyWith<$Res> {
  _$PasskeyAttestationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasskeyAttestation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? credential = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      credential: null == credential
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as Credential,
    ) as $Val);
  }

  /// Create a copy of PasskeyAttestation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CredentialCopyWith<$Res> get credential {
    return $CredentialCopyWith<$Res>(_value.credential, (value) {
      return _then(_value.copyWith(credential: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PasskeyAttestationImplCopyWith<$Res>
    implements $PasskeyAttestationCopyWith<$Res> {
  factory _$$PasskeyAttestationImplCopyWith(_$PasskeyAttestationImpl value,
          $Res Function(_$PasskeyAttestationImpl) then) =
      __$$PasskeyAttestationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, Credential credential});

  @override
  $CredentialCopyWith<$Res> get credential;
}

/// @nodoc
class __$$PasskeyAttestationImplCopyWithImpl<$Res>
    extends _$PasskeyAttestationCopyWithImpl<$Res, _$PasskeyAttestationImpl>
    implements _$$PasskeyAttestationImplCopyWith<$Res> {
  __$$PasskeyAttestationImplCopyWithImpl(_$PasskeyAttestationImpl _value,
      $Res Function(_$PasskeyAttestationImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasskeyAttestation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? credential = null,
  }) {
    return _then(_$PasskeyAttestationImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      credential: null == credential
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as Credential,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasskeyAttestationImpl implements _PasskeyAttestation {
  const _$PasskeyAttestationImpl(
      {required this.status, required this.credential});

  factory _$PasskeyAttestationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasskeyAttestationImplFromJson(json);

  @override
  final String status;
  @override
  final Credential credential;

  @override
  String toString() {
    return 'PasskeyAttestation(status: $status, credential: $credential)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasskeyAttestationImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.credential, credential) ||
                other.credential == credential));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, credential);

  /// Create a copy of PasskeyAttestation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasskeyAttestationImplCopyWith<_$PasskeyAttestationImpl> get copyWith =>
      __$$PasskeyAttestationImplCopyWithImpl<_$PasskeyAttestationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasskeyAttestationImplToJson(
      this,
    );
  }
}

abstract class _PasskeyAttestation implements PasskeyAttestation {
  const factory _PasskeyAttestation(
      {required final String status,
      required final Credential credential}) = _$PasskeyAttestationImpl;

  factory _PasskeyAttestation.fromJson(Map<String, dynamic> json) =
      _$PasskeyAttestationImpl.fromJson;

  @override
  String get status;
  @override
  Credential get credential;

  /// Create a copy of PasskeyAttestation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasskeyAttestationImplCopyWith<_$PasskeyAttestationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Credential _$CredentialFromJson(Map<String, dynamic> json) {
  return _Credential.fromJson(json);
}

/// @nodoc
mixin _$Credential {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get nickName => throw _privateConstructorUsedError;
  DateTime get registrationTime => throw _privateConstructorUsedError;
  DateTime get lastUsedTime => throw _privateConstructorUsedError;
  String get iconURI => throw _privateConstructorUsedError;
  bool get isHighAssurance => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;

  /// Serializes this Credential to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Credential
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CredentialCopyWith<Credential> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialCopyWith<$Res> {
  factory $CredentialCopyWith(
          Credential value, $Res Function(Credential) then) =
      _$CredentialCopyWithImpl<$Res, Credential>;
  @useResult
  $Res call(
      {String id,
      String type,
      String nickName,
      DateTime registrationTime,
      DateTime lastUsedTime,
      String iconURI,
      bool isHighAssurance,
      String state});
}

/// @nodoc
class _$CredentialCopyWithImpl<$Res, $Val extends Credential>
    implements $CredentialCopyWith<$Res> {
  _$CredentialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Credential
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? nickName = null,
    Object? registrationTime = null,
    Object? lastUsedTime = null,
    Object? iconURI = null,
    Object? isHighAssurance = null,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      registrationTime: null == registrationTime
          ? _value.registrationTime
          : registrationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUsedTime: null == lastUsedTime
          ? _value.lastUsedTime
          : lastUsedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      iconURI: null == iconURI
          ? _value.iconURI
          : iconURI // ignore: cast_nullable_to_non_nullable
              as String,
      isHighAssurance: null == isHighAssurance
          ? _value.isHighAssurance
          : isHighAssurance // ignore: cast_nullable_to_non_nullable
              as bool,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CredentialImplCopyWith<$Res>
    implements $CredentialCopyWith<$Res> {
  factory _$$CredentialImplCopyWith(
          _$CredentialImpl value, $Res Function(_$CredentialImpl) then) =
      __$$CredentialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String nickName,
      DateTime registrationTime,
      DateTime lastUsedTime,
      String iconURI,
      bool isHighAssurance,
      String state});
}

/// @nodoc
class __$$CredentialImplCopyWithImpl<$Res>
    extends _$CredentialCopyWithImpl<$Res, _$CredentialImpl>
    implements _$$CredentialImplCopyWith<$Res> {
  __$$CredentialImplCopyWithImpl(
      _$CredentialImpl _value, $Res Function(_$CredentialImpl) _then)
      : super(_value, _then);

  /// Create a copy of Credential
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? nickName = null,
    Object? registrationTime = null,
    Object? lastUsedTime = null,
    Object? iconURI = null,
    Object? isHighAssurance = null,
    Object? state = null,
  }) {
    return _then(_$CredentialImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      registrationTime: null == registrationTime
          ? _value.registrationTime
          : registrationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUsedTime: null == lastUsedTime
          ? _value.lastUsedTime
          : lastUsedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      iconURI: null == iconURI
          ? _value.iconURI
          : iconURI // ignore: cast_nullable_to_non_nullable
              as String,
      isHighAssurance: null == isHighAssurance
          ? _value.isHighAssurance
          : isHighAssurance // ignore: cast_nullable_to_non_nullable
              as bool,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CredentialImpl implements _Credential {
  const _$CredentialImpl(
      {required this.id,
      required this.type,
      required this.nickName,
      required this.registrationTime,
      required this.lastUsedTime,
      required this.iconURI,
      required this.isHighAssurance,
      required this.state});

  factory _$CredentialImpl.fromJson(Map<String, dynamic> json) =>
      _$$CredentialImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String nickName;
  @override
  final DateTime registrationTime;
  @override
  final DateTime lastUsedTime;
  @override
  final String iconURI;
  @override
  final bool isHighAssurance;
  @override
  final String state;

  @override
  String toString() {
    return 'Credential(id: $id, type: $type, nickName: $nickName, registrationTime: $registrationTime, lastUsedTime: $lastUsedTime, iconURI: $iconURI, isHighAssurance: $isHighAssurance, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CredentialImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.registrationTime, registrationTime) ||
                other.registrationTime == registrationTime) &&
            (identical(other.lastUsedTime, lastUsedTime) ||
                other.lastUsedTime == lastUsedTime) &&
            (identical(other.iconURI, iconURI) || other.iconURI == iconURI) &&
            (identical(other.isHighAssurance, isHighAssurance) ||
                other.isHighAssurance == isHighAssurance) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, nickName,
      registrationTime, lastUsedTime, iconURI, isHighAssurance, state);

  /// Create a copy of Credential
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CredentialImplCopyWith<_$CredentialImpl> get copyWith =>
      __$$CredentialImplCopyWithImpl<_$CredentialImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CredentialImplToJson(
      this,
    );
  }
}

abstract class _Credential implements Credential {
  const factory _Credential(
      {required final String id,
      required final String type,
      required final String nickName,
      required final DateTime registrationTime,
      required final DateTime lastUsedTime,
      required final String iconURI,
      required final bool isHighAssurance,
      required final String state}) = _$CredentialImpl;

  factory _Credential.fromJson(Map<String, dynamic> json) =
      _$CredentialImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get nickName;
  @override
  DateTime get registrationTime;
  @override
  DateTime get lastUsedTime;
  @override
  String get iconURI;
  @override
  bool get isHighAssurance;
  @override
  String get state;

  /// Create a copy of Credential
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CredentialImplCopyWith<_$CredentialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
