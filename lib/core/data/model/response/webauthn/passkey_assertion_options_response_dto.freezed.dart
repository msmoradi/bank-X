// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passkey_assertion_options_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PasskeyAssertionOptionsResponseDTO _$PasskeyAssertionOptionsResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _PasskeyAssertionOptionsResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$PasskeyAssertionOptionsResponseDTO {
  String get requestId => throw _privateConstructorUsedError;
  PublicKeyAssertionOptionsDTO get publicKey =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Serializes this PasskeyAssertionOptionsResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasskeyAssertionOptionsResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasskeyAssertionOptionsResponseDTOCopyWith<
          PasskeyAssertionOptionsResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasskeyAssertionOptionsResponseDTOCopyWith<$Res> {
  factory $PasskeyAssertionOptionsResponseDTOCopyWith(
          PasskeyAssertionOptionsResponseDTO value,
          $Res Function(PasskeyAssertionOptionsResponseDTO) then) =
      _$PasskeyAssertionOptionsResponseDTOCopyWithImpl<$Res,
          PasskeyAssertionOptionsResponseDTO>;
  @useResult
  $Res call(
      {String requestId,
      PublicKeyAssertionOptionsDTO publicKey,
      String? errorMessage});

  $PublicKeyAssertionOptionsDTOCopyWith<$Res> get publicKey;
}

/// @nodoc
class _$PasskeyAssertionOptionsResponseDTOCopyWithImpl<$Res,
        $Val extends PasskeyAssertionOptionsResponseDTO>
    implements $PasskeyAssertionOptionsResponseDTOCopyWith<$Res> {
  _$PasskeyAssertionOptionsResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasskeyAssertionOptionsResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? publicKey = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKeyAssertionOptionsDTO,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PasskeyAssertionOptionsResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyAssertionOptionsDTOCopyWith<$Res> get publicKey {
    return $PublicKeyAssertionOptionsDTOCopyWith<$Res>(_value.publicKey,
        (value) {
      return _then(_value.copyWith(publicKey: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PasskeyAssertionOptionsResponseDTOImplCopyWith<$Res>
    implements $PasskeyAssertionOptionsResponseDTOCopyWith<$Res> {
  factory _$$PasskeyAssertionOptionsResponseDTOImplCopyWith(
          _$PasskeyAssertionOptionsResponseDTOImpl value,
          $Res Function(_$PasskeyAssertionOptionsResponseDTOImpl) then) =
      __$$PasskeyAssertionOptionsResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String requestId,
      PublicKeyAssertionOptionsDTO publicKey,
      String? errorMessage});

  @override
  $PublicKeyAssertionOptionsDTOCopyWith<$Res> get publicKey;
}

/// @nodoc
class __$$PasskeyAssertionOptionsResponseDTOImplCopyWithImpl<$Res>
    extends _$PasskeyAssertionOptionsResponseDTOCopyWithImpl<$Res,
        _$PasskeyAssertionOptionsResponseDTOImpl>
    implements _$$PasskeyAssertionOptionsResponseDTOImplCopyWith<$Res> {
  __$$PasskeyAssertionOptionsResponseDTOImplCopyWithImpl(
      _$PasskeyAssertionOptionsResponseDTOImpl _value,
      $Res Function(_$PasskeyAssertionOptionsResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasskeyAssertionOptionsResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? publicKey = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PasskeyAssertionOptionsResponseDTOImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKeyAssertionOptionsDTO,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasskeyAssertionOptionsResponseDTOImpl
    implements _PasskeyAssertionOptionsResponseDTO {
  const _$PasskeyAssertionOptionsResponseDTOImpl(
      {required this.requestId, required this.publicKey, this.errorMessage});

  factory _$PasskeyAssertionOptionsResponseDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PasskeyAssertionOptionsResponseDTOImplFromJson(json);

  @override
  final String requestId;
  @override
  final PublicKeyAssertionOptionsDTO publicKey;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PasskeyAssertionOptionsResponseDTO(requestId: $requestId, publicKey: $publicKey, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasskeyAssertionOptionsResponseDTOImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, requestId, publicKey, errorMessage);

  /// Create a copy of PasskeyAssertionOptionsResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasskeyAssertionOptionsResponseDTOImplCopyWith<
          _$PasskeyAssertionOptionsResponseDTOImpl>
      get copyWith => __$$PasskeyAssertionOptionsResponseDTOImplCopyWithImpl<
          _$PasskeyAssertionOptionsResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasskeyAssertionOptionsResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _PasskeyAssertionOptionsResponseDTO
    implements PasskeyAssertionOptionsResponseDTO {
  const factory _PasskeyAssertionOptionsResponseDTO(
      {required final String requestId,
      required final PublicKeyAssertionOptionsDTO publicKey,
      final String? errorMessage}) = _$PasskeyAssertionOptionsResponseDTOImpl;

  factory _PasskeyAssertionOptionsResponseDTO.fromJson(
          Map<String, dynamic> json) =
      _$PasskeyAssertionOptionsResponseDTOImpl.fromJson;

  @override
  String get requestId;
  @override
  PublicKeyAssertionOptionsDTO get publicKey;
  @override
  String? get errorMessage;

  /// Create a copy of PasskeyAssertionOptionsResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasskeyAssertionOptionsResponseDTOImplCopyWith<
          _$PasskeyAssertionOptionsResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PublicKeyAssertionOptionsDTO _$PublicKeyAssertionOptionsDTOFromJson(
    Map<String, dynamic> json) {
  return _PublicKeyAssertionOptionsDTO.fromJson(json);
}

/// @nodoc
mixin _$PublicKeyAssertionOptionsDTO {
  String get challenge => throw _privateConstructorUsedError;
  int get timeout => throw _privateConstructorUsedError;
  String get rpId => throw _privateConstructorUsedError;
  List<AllowCredentialDTO> get allowCredentials =>
      throw _privateConstructorUsedError;
  String get userVerification => throw _privateConstructorUsedError;

  /// Serializes this PublicKeyAssertionOptionsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PublicKeyAssertionOptionsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PublicKeyAssertionOptionsDTOCopyWith<PublicKeyAssertionOptionsDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicKeyAssertionOptionsDTOCopyWith<$Res> {
  factory $PublicKeyAssertionOptionsDTOCopyWith(
          PublicKeyAssertionOptionsDTO value,
          $Res Function(PublicKeyAssertionOptionsDTO) then) =
      _$PublicKeyAssertionOptionsDTOCopyWithImpl<$Res,
          PublicKeyAssertionOptionsDTO>;
  @useResult
  $Res call(
      {String challenge,
      int timeout,
      String rpId,
      List<AllowCredentialDTO> allowCredentials,
      String userVerification});
}

/// @nodoc
class _$PublicKeyAssertionOptionsDTOCopyWithImpl<$Res,
        $Val extends PublicKeyAssertionOptionsDTO>
    implements $PublicKeyAssertionOptionsDTOCopyWith<$Res> {
  _$PublicKeyAssertionOptionsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PublicKeyAssertionOptionsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challenge = null,
    Object? timeout = null,
    Object? rpId = null,
    Object? allowCredentials = null,
    Object? userVerification = null,
  }) {
    return _then(_value.copyWith(
      challenge: null == challenge
          ? _value.challenge
          : challenge // ignore: cast_nullable_to_non_nullable
              as String,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as int,
      rpId: null == rpId
          ? _value.rpId
          : rpId // ignore: cast_nullable_to_non_nullable
              as String,
      allowCredentials: null == allowCredentials
          ? _value.allowCredentials
          : allowCredentials // ignore: cast_nullable_to_non_nullable
              as List<AllowCredentialDTO>,
      userVerification: null == userVerification
          ? _value.userVerification
          : userVerification // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PublicKeyAssertionOptionsDTOImplCopyWith<$Res>
    implements $PublicKeyAssertionOptionsDTOCopyWith<$Res> {
  factory _$$PublicKeyAssertionOptionsDTOImplCopyWith(
          _$PublicKeyAssertionOptionsDTOImpl value,
          $Res Function(_$PublicKeyAssertionOptionsDTOImpl) then) =
      __$$PublicKeyAssertionOptionsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String challenge,
      int timeout,
      String rpId,
      List<AllowCredentialDTO> allowCredentials,
      String userVerification});
}

/// @nodoc
class __$$PublicKeyAssertionOptionsDTOImplCopyWithImpl<$Res>
    extends _$PublicKeyAssertionOptionsDTOCopyWithImpl<$Res,
        _$PublicKeyAssertionOptionsDTOImpl>
    implements _$$PublicKeyAssertionOptionsDTOImplCopyWith<$Res> {
  __$$PublicKeyAssertionOptionsDTOImplCopyWithImpl(
      _$PublicKeyAssertionOptionsDTOImpl _value,
      $Res Function(_$PublicKeyAssertionOptionsDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of PublicKeyAssertionOptionsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challenge = null,
    Object? timeout = null,
    Object? rpId = null,
    Object? allowCredentials = null,
    Object? userVerification = null,
  }) {
    return _then(_$PublicKeyAssertionOptionsDTOImpl(
      challenge: null == challenge
          ? _value.challenge
          : challenge // ignore: cast_nullable_to_non_nullable
              as String,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as int,
      rpId: null == rpId
          ? _value.rpId
          : rpId // ignore: cast_nullable_to_non_nullable
              as String,
      allowCredentials: null == allowCredentials
          ? _value._allowCredentials
          : allowCredentials // ignore: cast_nullable_to_non_nullable
              as List<AllowCredentialDTO>,
      userVerification: null == userVerification
          ? _value.userVerification
          : userVerification // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PublicKeyAssertionOptionsDTOImpl
    implements _PublicKeyAssertionOptionsDTO {
  const _$PublicKeyAssertionOptionsDTOImpl(
      {required this.challenge,
      required this.timeout,
      required this.rpId,
      required final List<AllowCredentialDTO> allowCredentials,
      required this.userVerification})
      : _allowCredentials = allowCredentials;

  factory _$PublicKeyAssertionOptionsDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PublicKeyAssertionOptionsDTOImplFromJson(json);

  @override
  final String challenge;
  @override
  final int timeout;
  @override
  final String rpId;
  final List<AllowCredentialDTO> _allowCredentials;
  @override
  List<AllowCredentialDTO> get allowCredentials {
    if (_allowCredentials is EqualUnmodifiableListView)
      return _allowCredentials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowCredentials);
  }

  @override
  final String userVerification;

  @override
  String toString() {
    return 'PublicKeyAssertionOptionsDTO(challenge: $challenge, timeout: $timeout, rpId: $rpId, allowCredentials: $allowCredentials, userVerification: $userVerification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicKeyAssertionOptionsDTOImpl &&
            (identical(other.challenge, challenge) ||
                other.challenge == challenge) &&
            (identical(other.timeout, timeout) || other.timeout == timeout) &&
            (identical(other.rpId, rpId) || other.rpId == rpId) &&
            const DeepCollectionEquality()
                .equals(other._allowCredentials, _allowCredentials) &&
            (identical(other.userVerification, userVerification) ||
                other.userVerification == userVerification));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, challenge, timeout, rpId,
      const DeepCollectionEquality().hash(_allowCredentials), userVerification);

  /// Create a copy of PublicKeyAssertionOptionsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicKeyAssertionOptionsDTOImplCopyWith<
          _$PublicKeyAssertionOptionsDTOImpl>
      get copyWith => __$$PublicKeyAssertionOptionsDTOImplCopyWithImpl<
          _$PublicKeyAssertionOptionsDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PublicKeyAssertionOptionsDTOImplToJson(
      this,
    );
  }
}

abstract class _PublicKeyAssertionOptionsDTO
    implements PublicKeyAssertionOptionsDTO {
  const factory _PublicKeyAssertionOptionsDTO(
          {required final String challenge,
          required final int timeout,
          required final String rpId,
          required final List<AllowCredentialDTO> allowCredentials,
          required final String userVerification}) =
      _$PublicKeyAssertionOptionsDTOImpl;

  factory _PublicKeyAssertionOptionsDTO.fromJson(Map<String, dynamic> json) =
      _$PublicKeyAssertionOptionsDTOImpl.fromJson;

  @override
  String get challenge;
  @override
  int get timeout;
  @override
  String get rpId;
  @override
  List<AllowCredentialDTO> get allowCredentials;
  @override
  String get userVerification;

  /// Create a copy of PublicKeyAssertionOptionsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PublicKeyAssertionOptionsDTOImplCopyWith<
          _$PublicKeyAssertionOptionsDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AllowCredentialDTO _$AllowCredentialDTOFromJson(Map<String, dynamic> json) {
  return _AllowCredentialDTO.fromJson(json);
}

/// @nodoc
mixin _$AllowCredentialDTO {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  /// Serializes this AllowCredentialDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllowCredentialDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllowCredentialDTOCopyWith<AllowCredentialDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllowCredentialDTOCopyWith<$Res> {
  factory $AllowCredentialDTOCopyWith(
          AllowCredentialDTO value, $Res Function(AllowCredentialDTO) then) =
      _$AllowCredentialDTOCopyWithImpl<$Res, AllowCredentialDTO>;
  @useResult
  $Res call({String id, String type});
}

/// @nodoc
class _$AllowCredentialDTOCopyWithImpl<$Res, $Val extends AllowCredentialDTO>
    implements $AllowCredentialDTOCopyWith<$Res> {
  _$AllowCredentialDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllowCredentialDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllowCredentialDTOImplCopyWith<$Res>
    implements $AllowCredentialDTOCopyWith<$Res> {
  factory _$$AllowCredentialDTOImplCopyWith(_$AllowCredentialDTOImpl value,
          $Res Function(_$AllowCredentialDTOImpl) then) =
      __$$AllowCredentialDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String type});
}

/// @nodoc
class __$$AllowCredentialDTOImplCopyWithImpl<$Res>
    extends _$AllowCredentialDTOCopyWithImpl<$Res, _$AllowCredentialDTOImpl>
    implements _$$AllowCredentialDTOImplCopyWith<$Res> {
  __$$AllowCredentialDTOImplCopyWithImpl(_$AllowCredentialDTOImpl _value,
      $Res Function(_$AllowCredentialDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllowCredentialDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_$AllowCredentialDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllowCredentialDTOImpl implements _AllowCredentialDTO {
  const _$AllowCredentialDTOImpl({required this.id, required this.type});

  factory _$AllowCredentialDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllowCredentialDTOImplFromJson(json);

  @override
  final String id;
  @override
  final String type;

  @override
  String toString() {
    return 'AllowCredentialDTO(id: $id, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllowCredentialDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type);

  /// Create a copy of AllowCredentialDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllowCredentialDTOImplCopyWith<_$AllowCredentialDTOImpl> get copyWith =>
      __$$AllowCredentialDTOImplCopyWithImpl<_$AllowCredentialDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllowCredentialDTOImplToJson(
      this,
    );
  }
}

abstract class _AllowCredentialDTO implements AllowCredentialDTO {
  const factory _AllowCredentialDTO(
      {required final String id,
      required final String type}) = _$AllowCredentialDTOImpl;

  factory _AllowCredentialDTO.fromJson(Map<String, dynamic> json) =
      _$AllowCredentialDTOImpl.fromJson;

  @override
  String get id;
  @override
  String get type;

  /// Create a copy of AllowCredentialDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllowCredentialDTOImplCopyWith<_$AllowCredentialDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
