// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passkey_attestation_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PasskeyAttestationRequestDTO _$PasskeyAttestationRequestDTOFromJson(
    Map<String, dynamic> json) {
  return _PasskeyAttestationRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$PasskeyAttestationRequestDTO {
  String get requestId => throw _privateConstructorUsedError;
  @JsonKey(name: 'makeCredentialResult')
  MakeCredentialResultDTO get makeCredentialResult =>
      throw _privateConstructorUsedError;

  /// Serializes this PasskeyAttestationRequestDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasskeyAttestationRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasskeyAttestationRequestDTOCopyWith<PasskeyAttestationRequestDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasskeyAttestationRequestDTOCopyWith<$Res> {
  factory $PasskeyAttestationRequestDTOCopyWith(
          PasskeyAttestationRequestDTO value,
          $Res Function(PasskeyAttestationRequestDTO) then) =
      _$PasskeyAttestationRequestDTOCopyWithImpl<$Res,
          PasskeyAttestationRequestDTO>;
  @useResult
  $Res call(
      {String requestId,
      @JsonKey(name: 'makeCredentialResult')
      MakeCredentialResultDTO makeCredentialResult});

  $MakeCredentialResultDTOCopyWith<$Res> get makeCredentialResult;
}

/// @nodoc
class _$PasskeyAttestationRequestDTOCopyWithImpl<$Res,
        $Val extends PasskeyAttestationRequestDTO>
    implements $PasskeyAttestationRequestDTOCopyWith<$Res> {
  _$PasskeyAttestationRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasskeyAttestationRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? makeCredentialResult = null,
  }) {
    return _then(_value.copyWith(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      makeCredentialResult: null == makeCredentialResult
          ? _value.makeCredentialResult
          : makeCredentialResult // ignore: cast_nullable_to_non_nullable
              as MakeCredentialResultDTO,
    ) as $Val);
  }

  /// Create a copy of PasskeyAttestationRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MakeCredentialResultDTOCopyWith<$Res> get makeCredentialResult {
    return $MakeCredentialResultDTOCopyWith<$Res>(_value.makeCredentialResult,
        (value) {
      return _then(_value.copyWith(makeCredentialResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PasskeyAttestationRequestDTOImplCopyWith<$Res>
    implements $PasskeyAttestationRequestDTOCopyWith<$Res> {
  factory _$$PasskeyAttestationRequestDTOImplCopyWith(
          _$PasskeyAttestationRequestDTOImpl value,
          $Res Function(_$PasskeyAttestationRequestDTOImpl) then) =
      __$$PasskeyAttestationRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String requestId,
      @JsonKey(name: 'makeCredentialResult')
      MakeCredentialResultDTO makeCredentialResult});

  @override
  $MakeCredentialResultDTOCopyWith<$Res> get makeCredentialResult;
}

/// @nodoc
class __$$PasskeyAttestationRequestDTOImplCopyWithImpl<$Res>
    extends _$PasskeyAttestationRequestDTOCopyWithImpl<$Res,
        _$PasskeyAttestationRequestDTOImpl>
    implements _$$PasskeyAttestationRequestDTOImplCopyWith<$Res> {
  __$$PasskeyAttestationRequestDTOImplCopyWithImpl(
      _$PasskeyAttestationRequestDTOImpl _value,
      $Res Function(_$PasskeyAttestationRequestDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasskeyAttestationRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? makeCredentialResult = null,
  }) {
    return _then(_$PasskeyAttestationRequestDTOImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      makeCredentialResult: null == makeCredentialResult
          ? _value.makeCredentialResult
          : makeCredentialResult // ignore: cast_nullable_to_non_nullable
              as MakeCredentialResultDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasskeyAttestationRequestDTOImpl
    implements _PasskeyAttestationRequestDTO {
  const _$PasskeyAttestationRequestDTOImpl(
      {required this.requestId,
      @JsonKey(name: 'makeCredentialResult')
      required this.makeCredentialResult});

  factory _$PasskeyAttestationRequestDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PasskeyAttestationRequestDTOImplFromJson(json);

  @override
  final String requestId;
  @override
  @JsonKey(name: 'makeCredentialResult')
  final MakeCredentialResultDTO makeCredentialResult;

  @override
  String toString() {
    return 'PasskeyAttestationRequestDTO(requestId: $requestId, makeCredentialResult: $makeCredentialResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasskeyAttestationRequestDTOImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.makeCredentialResult, makeCredentialResult) ||
                other.makeCredentialResult == makeCredentialResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, requestId, makeCredentialResult);

  /// Create a copy of PasskeyAttestationRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasskeyAttestationRequestDTOImplCopyWith<
          _$PasskeyAttestationRequestDTOImpl>
      get copyWith => __$$PasskeyAttestationRequestDTOImplCopyWithImpl<
          _$PasskeyAttestationRequestDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasskeyAttestationRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _PasskeyAttestationRequestDTO
    implements PasskeyAttestationRequestDTO {
  const factory _PasskeyAttestationRequestDTO(
          {required final String requestId,
          @JsonKey(name: 'makeCredentialResult')
          required final MakeCredentialResultDTO makeCredentialResult}) =
      _$PasskeyAttestationRequestDTOImpl;

  factory _PasskeyAttestationRequestDTO.fromJson(Map<String, dynamic> json) =
      _$PasskeyAttestationRequestDTOImpl.fromJson;

  @override
  String get requestId;
  @override
  @JsonKey(name: 'makeCredentialResult')
  MakeCredentialResultDTO get makeCredentialResult;

  /// Create a copy of PasskeyAttestationRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasskeyAttestationRequestDTOImplCopyWith<
          _$PasskeyAttestationRequestDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MakeCredentialResultDTO _$MakeCredentialResultDTOFromJson(
    Map<String, dynamic> json) {
  return _MakeCredentialResultDTO.fromJson(json);
}

/// @nodoc
mixin _$MakeCredentialResultDTO {
  String get id => throw _privateConstructorUsedError;
  ResponseDTO get response => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'clientExtensionResults')
  Map<String, dynamic> get clientExtensionResults =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'rawId')
  String get rawId => throw _privateConstructorUsedError;
  @JsonKey(name: 'authenticatorAttachment')
  String get authenticatorAttachment => throw _privateConstructorUsedError;

  /// Serializes this MakeCredentialResultDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MakeCredentialResultDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MakeCredentialResultDTOCopyWith<MakeCredentialResultDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MakeCredentialResultDTOCopyWith<$Res> {
  factory $MakeCredentialResultDTOCopyWith(MakeCredentialResultDTO value,
          $Res Function(MakeCredentialResultDTO) then) =
      _$MakeCredentialResultDTOCopyWithImpl<$Res, MakeCredentialResultDTO>;
  @useResult
  $Res call(
      {String id,
      ResponseDTO response,
      String type,
      @JsonKey(name: 'clientExtensionResults')
      Map<String, dynamic> clientExtensionResults,
      @JsonKey(name: 'rawId') String rawId,
      @JsonKey(name: 'authenticatorAttachment')
      String authenticatorAttachment});

  $ResponseDTOCopyWith<$Res> get response;
}

/// @nodoc
class _$MakeCredentialResultDTOCopyWithImpl<$Res,
        $Val extends MakeCredentialResultDTO>
    implements $MakeCredentialResultDTOCopyWith<$Res> {
  _$MakeCredentialResultDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MakeCredentialResultDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? response = null,
    Object? type = null,
    Object? clientExtensionResults = null,
    Object? rawId = null,
    Object? authenticatorAttachment = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ResponseDTO,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      clientExtensionResults: null == clientExtensionResults
          ? _value.clientExtensionResults
          : clientExtensionResults // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      rawId: null == rawId
          ? _value.rawId
          : rawId // ignore: cast_nullable_to_non_nullable
              as String,
      authenticatorAttachment: null == authenticatorAttachment
          ? _value.authenticatorAttachment
          : authenticatorAttachment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of MakeCredentialResultDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseDTOCopyWith<$Res> get response {
    return $ResponseDTOCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MakeCredentialResultDTOImplCopyWith<$Res>
    implements $MakeCredentialResultDTOCopyWith<$Res> {
  factory _$$MakeCredentialResultDTOImplCopyWith(
          _$MakeCredentialResultDTOImpl value,
          $Res Function(_$MakeCredentialResultDTOImpl) then) =
      __$$MakeCredentialResultDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      ResponseDTO response,
      String type,
      @JsonKey(name: 'clientExtensionResults')
      Map<String, dynamic> clientExtensionResults,
      @JsonKey(name: 'rawId') String rawId,
      @JsonKey(name: 'authenticatorAttachment')
      String authenticatorAttachment});

  @override
  $ResponseDTOCopyWith<$Res> get response;
}

/// @nodoc
class __$$MakeCredentialResultDTOImplCopyWithImpl<$Res>
    extends _$MakeCredentialResultDTOCopyWithImpl<$Res,
        _$MakeCredentialResultDTOImpl>
    implements _$$MakeCredentialResultDTOImplCopyWith<$Res> {
  __$$MakeCredentialResultDTOImplCopyWithImpl(
      _$MakeCredentialResultDTOImpl _value,
      $Res Function(_$MakeCredentialResultDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of MakeCredentialResultDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? response = null,
    Object? type = null,
    Object? clientExtensionResults = null,
    Object? rawId = null,
    Object? authenticatorAttachment = null,
  }) {
    return _then(_$MakeCredentialResultDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ResponseDTO,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      clientExtensionResults: null == clientExtensionResults
          ? _value._clientExtensionResults
          : clientExtensionResults // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      rawId: null == rawId
          ? _value.rawId
          : rawId // ignore: cast_nullable_to_non_nullable
              as String,
      authenticatorAttachment: null == authenticatorAttachment
          ? _value.authenticatorAttachment
          : authenticatorAttachment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MakeCredentialResultDTOImpl implements _MakeCredentialResultDTO {
  const _$MakeCredentialResultDTOImpl(
      {required this.id,
      required this.response,
      required this.type,
      @JsonKey(name: 'clientExtensionResults')
      required final Map<String, dynamic> clientExtensionResults,
      @JsonKey(name: 'rawId') required this.rawId,
      @JsonKey(name: 'authenticatorAttachment')
      required this.authenticatorAttachment})
      : _clientExtensionResults = clientExtensionResults;

  factory _$MakeCredentialResultDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MakeCredentialResultDTOImplFromJson(json);

  @override
  final String id;
  @override
  final ResponseDTO response;
  @override
  final String type;
  final Map<String, dynamic> _clientExtensionResults;
  @override
  @JsonKey(name: 'clientExtensionResults')
  Map<String, dynamic> get clientExtensionResults {
    if (_clientExtensionResults is EqualUnmodifiableMapView)
      return _clientExtensionResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_clientExtensionResults);
  }

  @override
  @JsonKey(name: 'rawId')
  final String rawId;
  @override
  @JsonKey(name: 'authenticatorAttachment')
  final String authenticatorAttachment;

  @override
  String toString() {
    return 'MakeCredentialResultDTO(id: $id, response: $response, type: $type, clientExtensionResults: $clientExtensionResults, rawId: $rawId, authenticatorAttachment: $authenticatorAttachment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakeCredentialResultDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(
                other._clientExtensionResults, _clientExtensionResults) &&
            (identical(other.rawId, rawId) || other.rawId == rawId) &&
            (identical(
                    other.authenticatorAttachment, authenticatorAttachment) ||
                other.authenticatorAttachment == authenticatorAttachment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      response,
      type,
      const DeepCollectionEquality().hash(_clientExtensionResults),
      rawId,
      authenticatorAttachment);

  /// Create a copy of MakeCredentialResultDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MakeCredentialResultDTOImplCopyWith<_$MakeCredentialResultDTOImpl>
      get copyWith => __$$MakeCredentialResultDTOImplCopyWithImpl<
          _$MakeCredentialResultDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MakeCredentialResultDTOImplToJson(
      this,
    );
  }
}

abstract class _MakeCredentialResultDTO implements MakeCredentialResultDTO {
  const factory _MakeCredentialResultDTO(
          {required final String id,
          required final ResponseDTO response,
          required final String type,
          @JsonKey(name: 'clientExtensionResults')
          required final Map<String, dynamic> clientExtensionResults,
          @JsonKey(name: 'rawId') required final String rawId,
          @JsonKey(name: 'authenticatorAttachment')
          required final String authenticatorAttachment}) =
      _$MakeCredentialResultDTOImpl;

  factory _MakeCredentialResultDTO.fromJson(Map<String, dynamic> json) =
      _$MakeCredentialResultDTOImpl.fromJson;

  @override
  String get id;
  @override
  ResponseDTO get response;
  @override
  String get type;
  @override
  @JsonKey(name: 'clientExtensionResults')
  Map<String, dynamic> get clientExtensionResults;
  @override
  @JsonKey(name: 'rawId')
  String get rawId;
  @override
  @JsonKey(name: 'authenticatorAttachment')
  String get authenticatorAttachment;

  /// Create a copy of MakeCredentialResultDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MakeCredentialResultDTOImplCopyWith<_$MakeCredentialResultDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ResponseDTO _$ResponseDTOFromJson(Map<String, dynamic> json) {
  return _ResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$ResponseDTO {
  String get clientDataJSON => throw _privateConstructorUsedError;
  String get attestationObject => throw _privateConstructorUsedError;
  List<String> get transports => throw _privateConstructorUsedError;

  /// Serializes this ResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseDTOCopyWith<ResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDTOCopyWith<$Res> {
  factory $ResponseDTOCopyWith(
          ResponseDTO value, $Res Function(ResponseDTO) then) =
      _$ResponseDTOCopyWithImpl<$Res, ResponseDTO>;
  @useResult
  $Res call(
      {String clientDataJSON,
      String attestationObject,
      List<String> transports});
}

/// @nodoc
class _$ResponseDTOCopyWithImpl<$Res, $Val extends ResponseDTO>
    implements $ResponseDTOCopyWith<$Res> {
  _$ResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientDataJSON = null,
    Object? attestationObject = null,
    Object? transports = null,
  }) {
    return _then(_value.copyWith(
      clientDataJSON: null == clientDataJSON
          ? _value.clientDataJSON
          : clientDataJSON // ignore: cast_nullable_to_non_nullable
              as String,
      attestationObject: null == attestationObject
          ? _value.attestationObject
          : attestationObject // ignore: cast_nullable_to_non_nullable
              as String,
      transports: null == transports
          ? _value.transports
          : transports // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseDTOImplCopyWith<$Res>
    implements $ResponseDTOCopyWith<$Res> {
  factory _$$ResponseDTOImplCopyWith(
          _$ResponseDTOImpl value, $Res Function(_$ResponseDTOImpl) then) =
      __$$ResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String clientDataJSON,
      String attestationObject,
      List<String> transports});
}

/// @nodoc
class __$$ResponseDTOImplCopyWithImpl<$Res>
    extends _$ResponseDTOCopyWithImpl<$Res, _$ResponseDTOImpl>
    implements _$$ResponseDTOImplCopyWith<$Res> {
  __$$ResponseDTOImplCopyWithImpl(
      _$ResponseDTOImpl _value, $Res Function(_$ResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientDataJSON = null,
    Object? attestationObject = null,
    Object? transports = null,
  }) {
    return _then(_$ResponseDTOImpl(
      clientDataJSON: null == clientDataJSON
          ? _value.clientDataJSON
          : clientDataJSON // ignore: cast_nullable_to_non_nullable
              as String,
      attestationObject: null == attestationObject
          ? _value.attestationObject
          : attestationObject // ignore: cast_nullable_to_non_nullable
              as String,
      transports: null == transports
          ? _value._transports
          : transports // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDTOImpl implements _ResponseDTO {
  const _$ResponseDTOImpl(
      {required this.clientDataJSON,
      required this.attestationObject,
      required final List<String> transports})
      : _transports = transports;

  factory _$ResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDTOImplFromJson(json);

  @override
  final String clientDataJSON;
  @override
  final String attestationObject;
  final List<String> _transports;
  @override
  List<String> get transports {
    if (_transports is EqualUnmodifiableListView) return _transports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transports);
  }

  @override
  String toString() {
    return 'ResponseDTO(clientDataJSON: $clientDataJSON, attestationObject: $attestationObject, transports: $transports)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDTOImpl &&
            (identical(other.clientDataJSON, clientDataJSON) ||
                other.clientDataJSON == clientDataJSON) &&
            (identical(other.attestationObject, attestationObject) ||
                other.attestationObject == attestationObject) &&
            const DeepCollectionEquality()
                .equals(other._transports, _transports));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, clientDataJSON,
      attestationObject, const DeepCollectionEquality().hash(_transports));

  /// Create a copy of ResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseDTOImplCopyWith<_$ResponseDTOImpl> get copyWith =>
      __$$ResponseDTOImplCopyWithImpl<_$ResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _ResponseDTO implements ResponseDTO {
  const factory _ResponseDTO(
      {required final String clientDataJSON,
      required final String attestationObject,
      required final List<String> transports}) = _$ResponseDTOImpl;

  factory _ResponseDTO.fromJson(Map<String, dynamic> json) =
      _$ResponseDTOImpl.fromJson;

  @override
  String get clientDataJSON;
  @override
  String get attestationObject;
  @override
  List<String> get transports;

  /// Create a copy of ResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseDTOImplCopyWith<_$ResponseDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
