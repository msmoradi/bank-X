// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passkey_assertion_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PasskeyAssertionOptions _$PasskeyAssertionOptionsFromJson(
    Map<String, dynamic> json) {
  return _PasskeyAssertionOptions.fromJson(json);
}

/// @nodoc
mixin _$PasskeyAssertionOptions {
  String get requestId => throw _privateConstructorUsedError;
  PublicKeyAssertionOptions get publicKey => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Serializes this PasskeyAssertionOptions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasskeyAssertionOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasskeyAssertionOptionsCopyWith<PasskeyAssertionOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasskeyAssertionOptionsCopyWith<$Res> {
  factory $PasskeyAssertionOptionsCopyWith(PasskeyAssertionOptions value,
          $Res Function(PasskeyAssertionOptions) then) =
      _$PasskeyAssertionOptionsCopyWithImpl<$Res, PasskeyAssertionOptions>;
  @useResult
  $Res call(
      {String requestId,
      PublicKeyAssertionOptions publicKey,
      String? errorMessage});

  $PublicKeyAssertionOptionsCopyWith<$Res> get publicKey;
}

/// @nodoc
class _$PasskeyAssertionOptionsCopyWithImpl<$Res,
        $Val extends PasskeyAssertionOptions>
    implements $PasskeyAssertionOptionsCopyWith<$Res> {
  _$PasskeyAssertionOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasskeyAssertionOptions
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
              as PublicKeyAssertionOptions,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PasskeyAssertionOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyAssertionOptionsCopyWith<$Res> get publicKey {
    return $PublicKeyAssertionOptionsCopyWith<$Res>(_value.publicKey, (value) {
      return _then(_value.copyWith(publicKey: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PasskeyAssertionOptionsImplCopyWith<$Res>
    implements $PasskeyAssertionOptionsCopyWith<$Res> {
  factory _$$PasskeyAssertionOptionsImplCopyWith(
          _$PasskeyAssertionOptionsImpl value,
          $Res Function(_$PasskeyAssertionOptionsImpl) then) =
      __$$PasskeyAssertionOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String requestId,
      PublicKeyAssertionOptions publicKey,
      String? errorMessage});

  @override
  $PublicKeyAssertionOptionsCopyWith<$Res> get publicKey;
}

/// @nodoc
class __$$PasskeyAssertionOptionsImplCopyWithImpl<$Res>
    extends _$PasskeyAssertionOptionsCopyWithImpl<$Res,
        _$PasskeyAssertionOptionsImpl>
    implements _$$PasskeyAssertionOptionsImplCopyWith<$Res> {
  __$$PasskeyAssertionOptionsImplCopyWithImpl(
      _$PasskeyAssertionOptionsImpl _value,
      $Res Function(_$PasskeyAssertionOptionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasskeyAssertionOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? publicKey = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PasskeyAssertionOptionsImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKeyAssertionOptions,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasskeyAssertionOptionsImpl implements _PasskeyAssertionOptions {
  const _$PasskeyAssertionOptionsImpl(
      {required this.requestId, required this.publicKey, this.errorMessage});

  factory _$PasskeyAssertionOptionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasskeyAssertionOptionsImplFromJson(json);

  @override
  final String requestId;
  @override
  final PublicKeyAssertionOptions publicKey;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PasskeyAssertionOptions(requestId: $requestId, publicKey: $publicKey, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasskeyAssertionOptionsImpl &&
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

  /// Create a copy of PasskeyAssertionOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasskeyAssertionOptionsImplCopyWith<_$PasskeyAssertionOptionsImpl>
      get copyWith => __$$PasskeyAssertionOptionsImplCopyWithImpl<
          _$PasskeyAssertionOptionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasskeyAssertionOptionsImplToJson(
      this,
    );
  }
}

abstract class _PasskeyAssertionOptions implements PasskeyAssertionOptions {
  const factory _PasskeyAssertionOptions(
      {required final String requestId,
      required final PublicKeyAssertionOptions publicKey,
      final String? errorMessage}) = _$PasskeyAssertionOptionsImpl;

  factory _PasskeyAssertionOptions.fromJson(Map<String, dynamic> json) =
      _$PasskeyAssertionOptionsImpl.fromJson;

  @override
  String get requestId;
  @override
  PublicKeyAssertionOptions get publicKey;
  @override
  String? get errorMessage;

  /// Create a copy of PasskeyAssertionOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasskeyAssertionOptionsImplCopyWith<_$PasskeyAssertionOptionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PublicKeyAssertionOptions _$PublicKeyAssertionOptionsFromJson(
    Map<String, dynamic> json) {
  return _PublicKeyAssertionOptions.fromJson(json);
}

/// @nodoc
mixin _$PublicKeyAssertionOptions {
  String get challenge => throw _privateConstructorUsedError;
  int get timeout => throw _privateConstructorUsedError;
  String get rpId => throw _privateConstructorUsedError;
  List<AllowCredential> get allowCredentials =>
      throw _privateConstructorUsedError;
  String get userVerification => throw _privateConstructorUsedError;

  /// Serializes this PublicKeyAssertionOptions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PublicKeyAssertionOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PublicKeyAssertionOptionsCopyWith<PublicKeyAssertionOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicKeyAssertionOptionsCopyWith<$Res> {
  factory $PublicKeyAssertionOptionsCopyWith(PublicKeyAssertionOptions value,
          $Res Function(PublicKeyAssertionOptions) then) =
      _$PublicKeyAssertionOptionsCopyWithImpl<$Res, PublicKeyAssertionOptions>;
  @useResult
  $Res call(
      {String challenge,
      int timeout,
      String rpId,
      List<AllowCredential> allowCredentials,
      String userVerification});
}

/// @nodoc
class _$PublicKeyAssertionOptionsCopyWithImpl<$Res,
        $Val extends PublicKeyAssertionOptions>
    implements $PublicKeyAssertionOptionsCopyWith<$Res> {
  _$PublicKeyAssertionOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PublicKeyAssertionOptions
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
              as List<AllowCredential>,
      userVerification: null == userVerification
          ? _value.userVerification
          : userVerification // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PublicKeyAssertionOptionsImplCopyWith<$Res>
    implements $PublicKeyAssertionOptionsCopyWith<$Res> {
  factory _$$PublicKeyAssertionOptionsImplCopyWith(
          _$PublicKeyAssertionOptionsImpl value,
          $Res Function(_$PublicKeyAssertionOptionsImpl) then) =
      __$$PublicKeyAssertionOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String challenge,
      int timeout,
      String rpId,
      List<AllowCredential> allowCredentials,
      String userVerification});
}

/// @nodoc
class __$$PublicKeyAssertionOptionsImplCopyWithImpl<$Res>
    extends _$PublicKeyAssertionOptionsCopyWithImpl<$Res,
        _$PublicKeyAssertionOptionsImpl>
    implements _$$PublicKeyAssertionOptionsImplCopyWith<$Res> {
  __$$PublicKeyAssertionOptionsImplCopyWithImpl(
      _$PublicKeyAssertionOptionsImpl _value,
      $Res Function(_$PublicKeyAssertionOptionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PublicKeyAssertionOptions
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
    return _then(_$PublicKeyAssertionOptionsImpl(
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
              as List<AllowCredential>,
      userVerification: null == userVerification
          ? _value.userVerification
          : userVerification // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PublicKeyAssertionOptionsImpl implements _PublicKeyAssertionOptions {
  const _$PublicKeyAssertionOptionsImpl(
      {required this.challenge,
      required this.timeout,
      required this.rpId,
      required final List<AllowCredential> allowCredentials,
      required this.userVerification})
      : _allowCredentials = allowCredentials;

  factory _$PublicKeyAssertionOptionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PublicKeyAssertionOptionsImplFromJson(json);

  @override
  final String challenge;
  @override
  final int timeout;
  @override
  final String rpId;
  final List<AllowCredential> _allowCredentials;
  @override
  List<AllowCredential> get allowCredentials {
    if (_allowCredentials is EqualUnmodifiableListView)
      return _allowCredentials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowCredentials);
  }

  @override
  final String userVerification;

  @override
  String toString() {
    return 'PublicKeyAssertionOptions(challenge: $challenge, timeout: $timeout, rpId: $rpId, allowCredentials: $allowCredentials, userVerification: $userVerification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicKeyAssertionOptionsImpl &&
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

  /// Create a copy of PublicKeyAssertionOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicKeyAssertionOptionsImplCopyWith<_$PublicKeyAssertionOptionsImpl>
      get copyWith => __$$PublicKeyAssertionOptionsImplCopyWithImpl<
          _$PublicKeyAssertionOptionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PublicKeyAssertionOptionsImplToJson(
      this,
    );
  }
}

abstract class _PublicKeyAssertionOptions implements PublicKeyAssertionOptions {
  const factory _PublicKeyAssertionOptions(
          {required final String challenge,
          required final int timeout,
          required final String rpId,
          required final List<AllowCredential> allowCredentials,
          required final String userVerification}) =
      _$PublicKeyAssertionOptionsImpl;

  factory _PublicKeyAssertionOptions.fromJson(Map<String, dynamic> json) =
      _$PublicKeyAssertionOptionsImpl.fromJson;

  @override
  String get challenge;
  @override
  int get timeout;
  @override
  String get rpId;
  @override
  List<AllowCredential> get allowCredentials;
  @override
  String get userVerification;

  /// Create a copy of PublicKeyAssertionOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PublicKeyAssertionOptionsImplCopyWith<_$PublicKeyAssertionOptionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AllowCredential _$AllowCredentialFromJson(Map<String, dynamic> json) {
  return _AllowCredential.fromJson(json);
}

/// @nodoc
mixin _$AllowCredential {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  /// Serializes this AllowCredential to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllowCredential
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllowCredentialCopyWith<AllowCredential> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllowCredentialCopyWith<$Res> {
  factory $AllowCredentialCopyWith(
          AllowCredential value, $Res Function(AllowCredential) then) =
      _$AllowCredentialCopyWithImpl<$Res, AllowCredential>;
  @useResult
  $Res call({String id, String type});
}

/// @nodoc
class _$AllowCredentialCopyWithImpl<$Res, $Val extends AllowCredential>
    implements $AllowCredentialCopyWith<$Res> {
  _$AllowCredentialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllowCredential
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
abstract class _$$AllowCredentialImplCopyWith<$Res>
    implements $AllowCredentialCopyWith<$Res> {
  factory _$$AllowCredentialImplCopyWith(_$AllowCredentialImpl value,
          $Res Function(_$AllowCredentialImpl) then) =
      __$$AllowCredentialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String type});
}

/// @nodoc
class __$$AllowCredentialImplCopyWithImpl<$Res>
    extends _$AllowCredentialCopyWithImpl<$Res, _$AllowCredentialImpl>
    implements _$$AllowCredentialImplCopyWith<$Res> {
  __$$AllowCredentialImplCopyWithImpl(
      _$AllowCredentialImpl _value, $Res Function(_$AllowCredentialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllowCredential
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_$AllowCredentialImpl(
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
class _$AllowCredentialImpl implements _AllowCredential {
  const _$AllowCredentialImpl({required this.id, required this.type});

  factory _$AllowCredentialImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllowCredentialImplFromJson(json);

  @override
  final String id;
  @override
  final String type;

  @override
  String toString() {
    return 'AllowCredential(id: $id, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllowCredentialImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type);

  /// Create a copy of AllowCredential
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllowCredentialImplCopyWith<_$AllowCredentialImpl> get copyWith =>
      __$$AllowCredentialImplCopyWithImpl<_$AllowCredentialImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllowCredentialImplToJson(
      this,
    );
  }
}

abstract class _AllowCredential implements AllowCredential {
  const factory _AllowCredential(
      {required final String id,
      required final String type}) = _$AllowCredentialImpl;

  factory _AllowCredential.fromJson(Map<String, dynamic> json) =
      _$AllowCredentialImpl.fromJson;

  @override
  String get id;
  @override
  String get type;

  /// Create a copy of AllowCredential
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllowCredentialImplCopyWith<_$AllowCredentialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
