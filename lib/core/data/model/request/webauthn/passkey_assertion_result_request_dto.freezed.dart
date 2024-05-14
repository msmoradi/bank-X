// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passkey_assertion_result_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PasskeyAssertionResultRequestDTO _$PasskeyAssertionResultRequestDTOFromJson(
    Map<String, dynamic> json) {
  return _PasskeyAssertionResultRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$PasskeyAssertionResultRequestDTO {
  String get requestId => throw _privateConstructorUsedError;
  @JsonKey(name: 'assertionResult')
  AssertionResultDTO get assertionResult => throw _privateConstructorUsedError;

  /// Serializes this PasskeyAssertionResultRequestDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasskeyAssertionResultRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasskeyAssertionResultRequestDTOCopyWith<PasskeyAssertionResultRequestDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasskeyAssertionResultRequestDTOCopyWith<$Res> {
  factory $PasskeyAssertionResultRequestDTOCopyWith(
          PasskeyAssertionResultRequestDTO value,
          $Res Function(PasskeyAssertionResultRequestDTO) then) =
      _$PasskeyAssertionResultRequestDTOCopyWithImpl<$Res,
          PasskeyAssertionResultRequestDTO>;
  @useResult
  $Res call(
      {String requestId,
      @JsonKey(name: 'assertionResult') AssertionResultDTO assertionResult});

  $AssertionResultDTOCopyWith<$Res> get assertionResult;
}

/// @nodoc
class _$PasskeyAssertionResultRequestDTOCopyWithImpl<$Res,
        $Val extends PasskeyAssertionResultRequestDTO>
    implements $PasskeyAssertionResultRequestDTOCopyWith<$Res> {
  _$PasskeyAssertionResultRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasskeyAssertionResultRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? assertionResult = null,
  }) {
    return _then(_value.copyWith(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      assertionResult: null == assertionResult
          ? _value.assertionResult
          : assertionResult // ignore: cast_nullable_to_non_nullable
              as AssertionResultDTO,
    ) as $Val);
  }

  /// Create a copy of PasskeyAssertionResultRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AssertionResultDTOCopyWith<$Res> get assertionResult {
    return $AssertionResultDTOCopyWith<$Res>(_value.assertionResult, (value) {
      return _then(_value.copyWith(assertionResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PasskeyAssertionResultRequestDTOImplCopyWith<$Res>
    implements $PasskeyAssertionResultRequestDTOCopyWith<$Res> {
  factory _$$PasskeyAssertionResultRequestDTOImplCopyWith(
          _$PasskeyAssertionResultRequestDTOImpl value,
          $Res Function(_$PasskeyAssertionResultRequestDTOImpl) then) =
      __$$PasskeyAssertionResultRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String requestId,
      @JsonKey(name: 'assertionResult') AssertionResultDTO assertionResult});

  @override
  $AssertionResultDTOCopyWith<$Res> get assertionResult;
}

/// @nodoc
class __$$PasskeyAssertionResultRequestDTOImplCopyWithImpl<$Res>
    extends _$PasskeyAssertionResultRequestDTOCopyWithImpl<$Res,
        _$PasskeyAssertionResultRequestDTOImpl>
    implements _$$PasskeyAssertionResultRequestDTOImplCopyWith<$Res> {
  __$$PasskeyAssertionResultRequestDTOImplCopyWithImpl(
      _$PasskeyAssertionResultRequestDTOImpl _value,
      $Res Function(_$PasskeyAssertionResultRequestDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasskeyAssertionResultRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? assertionResult = null,
  }) {
    return _then(_$PasskeyAssertionResultRequestDTOImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      assertionResult: null == assertionResult
          ? _value.assertionResult
          : assertionResult // ignore: cast_nullable_to_non_nullable
              as AssertionResultDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasskeyAssertionResultRequestDTOImpl
    implements _PasskeyAssertionResultRequestDTO {
  const _$PasskeyAssertionResultRequestDTOImpl(
      {required this.requestId,
      @JsonKey(name: 'assertionResult') required this.assertionResult});

  factory _$PasskeyAssertionResultRequestDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PasskeyAssertionResultRequestDTOImplFromJson(json);

  @override
  final String requestId;
  @override
  @JsonKey(name: 'assertionResult')
  final AssertionResultDTO assertionResult;

  @override
  String toString() {
    return 'PasskeyAssertionResultRequestDTO(requestId: $requestId, assertionResult: $assertionResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasskeyAssertionResultRequestDTOImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.assertionResult, assertionResult) ||
                other.assertionResult == assertionResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, requestId, assertionResult);

  /// Create a copy of PasskeyAssertionResultRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasskeyAssertionResultRequestDTOImplCopyWith<
          _$PasskeyAssertionResultRequestDTOImpl>
      get copyWith => __$$PasskeyAssertionResultRequestDTOImplCopyWithImpl<
          _$PasskeyAssertionResultRequestDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasskeyAssertionResultRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _PasskeyAssertionResultRequestDTO
    implements PasskeyAssertionResultRequestDTO {
  const factory _PasskeyAssertionResultRequestDTO(
          {required final String requestId,
          @JsonKey(name: 'assertionResult')
          required final AssertionResultDTO assertionResult}) =
      _$PasskeyAssertionResultRequestDTOImpl;

  factory _PasskeyAssertionResultRequestDTO.fromJson(
          Map<String, dynamic> json) =
      _$PasskeyAssertionResultRequestDTOImpl.fromJson;

  @override
  String get requestId;
  @override
  @JsonKey(name: 'assertionResult')
  AssertionResultDTO get assertionResult;

  /// Create a copy of PasskeyAssertionResultRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasskeyAssertionResultRequestDTOImplCopyWith<
          _$PasskeyAssertionResultRequestDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AssertionResultDTO _$AssertionResultDTOFromJson(Map<String, dynamic> json) {
  return _AssertionResultDTO.fromJson(json);
}

/// @nodoc
mixin _$AssertionResultDTO {
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

  /// Serializes this AssertionResultDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssertionResultDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssertionResultDTOCopyWith<AssertionResultDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssertionResultDTOCopyWith<$Res> {
  factory $AssertionResultDTOCopyWith(
          AssertionResultDTO value, $Res Function(AssertionResultDTO) then) =
      _$AssertionResultDTOCopyWithImpl<$Res, AssertionResultDTO>;
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
class _$AssertionResultDTOCopyWithImpl<$Res, $Val extends AssertionResultDTO>
    implements $AssertionResultDTOCopyWith<$Res> {
  _$AssertionResultDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssertionResultDTO
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

  /// Create a copy of AssertionResultDTO
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
abstract class _$$AssertionResultDTOImplCopyWith<$Res>
    implements $AssertionResultDTOCopyWith<$Res> {
  factory _$$AssertionResultDTOImplCopyWith(_$AssertionResultDTOImpl value,
          $Res Function(_$AssertionResultDTOImpl) then) =
      __$$AssertionResultDTOImplCopyWithImpl<$Res>;
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
class __$$AssertionResultDTOImplCopyWithImpl<$Res>
    extends _$AssertionResultDTOCopyWithImpl<$Res, _$AssertionResultDTOImpl>
    implements _$$AssertionResultDTOImplCopyWith<$Res> {
  __$$AssertionResultDTOImplCopyWithImpl(_$AssertionResultDTOImpl _value,
      $Res Function(_$AssertionResultDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssertionResultDTO
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
    return _then(_$AssertionResultDTOImpl(
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
class _$AssertionResultDTOImpl implements _AssertionResultDTO {
  const _$AssertionResultDTOImpl(
      {required this.id,
      required this.response,
      required this.type,
      @JsonKey(name: 'clientExtensionResults')
      required final Map<String, dynamic> clientExtensionResults,
      @JsonKey(name: 'rawId') required this.rawId,
      @JsonKey(name: 'authenticatorAttachment')
      required this.authenticatorAttachment})
      : _clientExtensionResults = clientExtensionResults;

  factory _$AssertionResultDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssertionResultDTOImplFromJson(json);

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
    return 'AssertionResultDTO(id: $id, response: $response, type: $type, clientExtensionResults: $clientExtensionResults, rawId: $rawId, authenticatorAttachment: $authenticatorAttachment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssertionResultDTOImpl &&
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

  /// Create a copy of AssertionResultDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssertionResultDTOImplCopyWith<_$AssertionResultDTOImpl> get copyWith =>
      __$$AssertionResultDTOImplCopyWithImpl<_$AssertionResultDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssertionResultDTOImplToJson(
      this,
    );
  }
}

abstract class _AssertionResultDTO implements AssertionResultDTO {
  const factory _AssertionResultDTO(
          {required final String id,
          required final ResponseDTO response,
          required final String type,
          @JsonKey(name: 'clientExtensionResults')
          required final Map<String, dynamic> clientExtensionResults,
          @JsonKey(name: 'rawId') required final String rawId,
          @JsonKey(name: 'authenticatorAttachment')
          required final String authenticatorAttachment}) =
      _$AssertionResultDTOImpl;

  factory _AssertionResultDTO.fromJson(Map<String, dynamic> json) =
      _$AssertionResultDTOImpl.fromJson;

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

  /// Create a copy of AssertionResultDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssertionResultDTOImplCopyWith<_$AssertionResultDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseDTO _$ResponseDTOFromJson(Map<String, dynamic> json) {
  return _ResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$ResponseDTO {
  String get authenticatorData => throw _privateConstructorUsedError;
  String get signature => throw _privateConstructorUsedError;
  String get userHandle => throw _privateConstructorUsedError;
  String get clientDataJSON => throw _privateConstructorUsedError;

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
      {String authenticatorData,
      String signature,
      String userHandle,
      String clientDataJSON});
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
    Object? authenticatorData = null,
    Object? signature = null,
    Object? userHandle = null,
    Object? clientDataJSON = null,
  }) {
    return _then(_value.copyWith(
      authenticatorData: null == authenticatorData
          ? _value.authenticatorData
          : authenticatorData // ignore: cast_nullable_to_non_nullable
              as String,
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
      userHandle: null == userHandle
          ? _value.userHandle
          : userHandle // ignore: cast_nullable_to_non_nullable
              as String,
      clientDataJSON: null == clientDataJSON
          ? _value.clientDataJSON
          : clientDataJSON // ignore: cast_nullable_to_non_nullable
              as String,
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
      {String authenticatorData,
      String signature,
      String userHandle,
      String clientDataJSON});
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
    Object? authenticatorData = null,
    Object? signature = null,
    Object? userHandle = null,
    Object? clientDataJSON = null,
  }) {
    return _then(_$ResponseDTOImpl(
      authenticatorData: null == authenticatorData
          ? _value.authenticatorData
          : authenticatorData // ignore: cast_nullable_to_non_nullable
              as String,
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
      userHandle: null == userHandle
          ? _value.userHandle
          : userHandle // ignore: cast_nullable_to_non_nullable
              as String,
      clientDataJSON: null == clientDataJSON
          ? _value.clientDataJSON
          : clientDataJSON // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDTOImpl implements _ResponseDTO {
  const _$ResponseDTOImpl(
      {required this.authenticatorData,
      required this.signature,
      required this.userHandle,
      required this.clientDataJSON});

  factory _$ResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDTOImplFromJson(json);

  @override
  final String authenticatorData;
  @override
  final String signature;
  @override
  final String userHandle;
  @override
  final String clientDataJSON;

  @override
  String toString() {
    return 'ResponseDTO(authenticatorData: $authenticatorData, signature: $signature, userHandle: $userHandle, clientDataJSON: $clientDataJSON)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDTOImpl &&
            (identical(other.authenticatorData, authenticatorData) ||
                other.authenticatorData == authenticatorData) &&
            (identical(other.signature, signature) ||
                other.signature == signature) &&
            (identical(other.userHandle, userHandle) ||
                other.userHandle == userHandle) &&
            (identical(other.clientDataJSON, clientDataJSON) ||
                other.clientDataJSON == clientDataJSON));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, authenticatorData, signature, userHandle, clientDataJSON);

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
      {required final String authenticatorData,
      required final String signature,
      required final String userHandle,
      required final String clientDataJSON}) = _$ResponseDTOImpl;

  factory _ResponseDTO.fromJson(Map<String, dynamic> json) =
      _$ResponseDTOImpl.fromJson;

  @override
  String get authenticatorData;
  @override
  String get signature;
  @override
  String get userHandle;
  @override
  String get clientDataJSON;

  /// Create a copy of ResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseDTOImplCopyWith<_$ResponseDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
