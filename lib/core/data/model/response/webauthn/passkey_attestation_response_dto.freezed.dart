// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passkey_attestation_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PasskeyAttestationResponseDTO _$PasskeyAttestationResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _PasskeyAttestationResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$PasskeyAttestationResponseDTO {
  String get status => throw _privateConstructorUsedError;
  CredentialDTO get credential => throw _privateConstructorUsedError;

  /// Serializes this PasskeyAttestationResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasskeyAttestationResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasskeyAttestationResponseDTOCopyWith<PasskeyAttestationResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasskeyAttestationResponseDTOCopyWith<$Res> {
  factory $PasskeyAttestationResponseDTOCopyWith(
          PasskeyAttestationResponseDTO value,
          $Res Function(PasskeyAttestationResponseDTO) then) =
      _$PasskeyAttestationResponseDTOCopyWithImpl<$Res,
          PasskeyAttestationResponseDTO>;
  @useResult
  $Res call({String status, CredentialDTO credential});

  $CredentialDTOCopyWith<$Res> get credential;
}

/// @nodoc
class _$PasskeyAttestationResponseDTOCopyWithImpl<$Res,
        $Val extends PasskeyAttestationResponseDTO>
    implements $PasskeyAttestationResponseDTOCopyWith<$Res> {
  _$PasskeyAttestationResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasskeyAttestationResponseDTO
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
              as CredentialDTO,
    ) as $Val);
  }

  /// Create a copy of PasskeyAttestationResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CredentialDTOCopyWith<$Res> get credential {
    return $CredentialDTOCopyWith<$Res>(_value.credential, (value) {
      return _then(_value.copyWith(credential: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PasskeyAttestationResponseDTOImplCopyWith<$Res>
    implements $PasskeyAttestationResponseDTOCopyWith<$Res> {
  factory _$$PasskeyAttestationResponseDTOImplCopyWith(
          _$PasskeyAttestationResponseDTOImpl value,
          $Res Function(_$PasskeyAttestationResponseDTOImpl) then) =
      __$$PasskeyAttestationResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, CredentialDTO credential});

  @override
  $CredentialDTOCopyWith<$Res> get credential;
}

/// @nodoc
class __$$PasskeyAttestationResponseDTOImplCopyWithImpl<$Res>
    extends _$PasskeyAttestationResponseDTOCopyWithImpl<$Res,
        _$PasskeyAttestationResponseDTOImpl>
    implements _$$PasskeyAttestationResponseDTOImplCopyWith<$Res> {
  __$$PasskeyAttestationResponseDTOImplCopyWithImpl(
      _$PasskeyAttestationResponseDTOImpl _value,
      $Res Function(_$PasskeyAttestationResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasskeyAttestationResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? credential = null,
  }) {
    return _then(_$PasskeyAttestationResponseDTOImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      credential: null == credential
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as CredentialDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasskeyAttestationResponseDTOImpl
    implements _PasskeyAttestationResponseDTO {
  const _$PasskeyAttestationResponseDTOImpl(
      {required this.status, required this.credential});

  factory _$PasskeyAttestationResponseDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PasskeyAttestationResponseDTOImplFromJson(json);

  @override
  final String status;
  @override
  final CredentialDTO credential;

  @override
  String toString() {
    return 'PasskeyAttestationResponseDTO(status: $status, credential: $credential)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasskeyAttestationResponseDTOImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.credential, credential) ||
                other.credential == credential));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, credential);

  /// Create a copy of PasskeyAttestationResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasskeyAttestationResponseDTOImplCopyWith<
          _$PasskeyAttestationResponseDTOImpl>
      get copyWith => __$$PasskeyAttestationResponseDTOImplCopyWithImpl<
          _$PasskeyAttestationResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasskeyAttestationResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _PasskeyAttestationResponseDTO
    implements PasskeyAttestationResponseDTO {
  const factory _PasskeyAttestationResponseDTO(
          {required final String status,
          required final CredentialDTO credential}) =
      _$PasskeyAttestationResponseDTOImpl;

  factory _PasskeyAttestationResponseDTO.fromJson(Map<String, dynamic> json) =
      _$PasskeyAttestationResponseDTOImpl.fromJson;

  @override
  String get status;
  @override
  CredentialDTO get credential;

  /// Create a copy of PasskeyAttestationResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasskeyAttestationResponseDTOImplCopyWith<
          _$PasskeyAttestationResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CredentialDTO _$CredentialDTOFromJson(Map<String, dynamic> json) {
  return _CredentialDTO.fromJson(json);
}

/// @nodoc
mixin _$CredentialDTO {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get nickName => throw _privateConstructorUsedError;
  DateTime get registrationTime => throw _privateConstructorUsedError;
  DateTime get lastUsedTime => throw _privateConstructorUsedError;
  String get iconURI => throw _privateConstructorUsedError;
  bool get isHighAssurance => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;

  /// Serializes this CredentialDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CredentialDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CredentialDTOCopyWith<CredentialDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialDTOCopyWith<$Res> {
  factory $CredentialDTOCopyWith(
          CredentialDTO value, $Res Function(CredentialDTO) then) =
      _$CredentialDTOCopyWithImpl<$Res, CredentialDTO>;
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
class _$CredentialDTOCopyWithImpl<$Res, $Val extends CredentialDTO>
    implements $CredentialDTOCopyWith<$Res> {
  _$CredentialDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CredentialDTO
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
abstract class _$$CredentialDTOImplCopyWith<$Res>
    implements $CredentialDTOCopyWith<$Res> {
  factory _$$CredentialDTOImplCopyWith(
          _$CredentialDTOImpl value, $Res Function(_$CredentialDTOImpl) then) =
      __$$CredentialDTOImplCopyWithImpl<$Res>;
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
class __$$CredentialDTOImplCopyWithImpl<$Res>
    extends _$CredentialDTOCopyWithImpl<$Res, _$CredentialDTOImpl>
    implements _$$CredentialDTOImplCopyWith<$Res> {
  __$$CredentialDTOImplCopyWithImpl(
      _$CredentialDTOImpl _value, $Res Function(_$CredentialDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of CredentialDTO
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
    return _then(_$CredentialDTOImpl(
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
class _$CredentialDTOImpl implements _CredentialDTO {
  const _$CredentialDTOImpl(
      {required this.id,
      required this.type,
      required this.nickName,
      required this.registrationTime,
      required this.lastUsedTime,
      required this.iconURI,
      required this.isHighAssurance,
      required this.state});

  factory _$CredentialDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CredentialDTOImplFromJson(json);

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
    return 'CredentialDTO(id: $id, type: $type, nickName: $nickName, registrationTime: $registrationTime, lastUsedTime: $lastUsedTime, iconURI: $iconURI, isHighAssurance: $isHighAssurance, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CredentialDTOImpl &&
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

  /// Create a copy of CredentialDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CredentialDTOImplCopyWith<_$CredentialDTOImpl> get copyWith =>
      __$$CredentialDTOImplCopyWithImpl<_$CredentialDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CredentialDTOImplToJson(
      this,
    );
  }
}

abstract class _CredentialDTO implements CredentialDTO {
  const factory _CredentialDTO(
      {required final String id,
      required final String type,
      required final String nickName,
      required final DateTime registrationTime,
      required final DateTime lastUsedTime,
      required final String iconURI,
      required final bool isHighAssurance,
      required final String state}) = _$CredentialDTOImpl;

  factory _CredentialDTO.fromJson(Map<String, dynamic> json) =
      _$CredentialDTOImpl.fromJson;

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

  /// Create a copy of CredentialDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CredentialDTOImplCopyWith<_$CredentialDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
