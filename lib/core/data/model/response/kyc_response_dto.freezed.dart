// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kyc_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KycResponseDto _$KycResponseDtoFromJson(Map<String, dynamic> json) {
  return _KycResponseDto.fromJson(json);
}

/// @nodoc
mixin _$KycResponseDto {
  RoutingButtonDto get routingButton => throw _privateConstructorUsedError;
  KycStateDto get state => throw _privateConstructorUsedError;

  /// Serializes this KycResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KycResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KycResponseDtoCopyWith<KycResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KycResponseDtoCopyWith<$Res> {
  factory $KycResponseDtoCopyWith(
          KycResponseDto value, $Res Function(KycResponseDto) then) =
      _$KycResponseDtoCopyWithImpl<$Res, KycResponseDto>;
  @useResult
  $Res call({RoutingButtonDto routingButton, KycStateDto state});

  $RoutingButtonDtoCopyWith<$Res> get routingButton;
  $KycStateDtoCopyWith<$Res> get state;
}

/// @nodoc
class _$KycResponseDtoCopyWithImpl<$Res, $Val extends KycResponseDto>
    implements $KycResponseDtoCopyWith<$Res> {
  _$KycResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KycResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routingButton = null,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      routingButton: null == routingButton
          ? _value.routingButton
          : routingButton // ignore: cast_nullable_to_non_nullable
              as RoutingButtonDto,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as KycStateDto,
    ) as $Val);
  }

  /// Create a copy of KycResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoutingButtonDtoCopyWith<$Res> get routingButton {
    return $RoutingButtonDtoCopyWith<$Res>(_value.routingButton, (value) {
      return _then(_value.copyWith(routingButton: value) as $Val);
    });
  }

  /// Create a copy of KycResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KycStateDtoCopyWith<$Res> get state {
    return $KycStateDtoCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KycResponseDtoImplCopyWith<$Res>
    implements $KycResponseDtoCopyWith<$Res> {
  factory _$$KycResponseDtoImplCopyWith(_$KycResponseDtoImpl value,
          $Res Function(_$KycResponseDtoImpl) then) =
      __$$KycResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RoutingButtonDto routingButton, KycStateDto state});

  @override
  $RoutingButtonDtoCopyWith<$Res> get routingButton;
  @override
  $KycStateDtoCopyWith<$Res> get state;
}

/// @nodoc
class __$$KycResponseDtoImplCopyWithImpl<$Res>
    extends _$KycResponseDtoCopyWithImpl<$Res, _$KycResponseDtoImpl>
    implements _$$KycResponseDtoImplCopyWith<$Res> {
  __$$KycResponseDtoImplCopyWithImpl(
      _$KycResponseDtoImpl _value, $Res Function(_$KycResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of KycResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routingButton = null,
    Object? state = null,
  }) {
    return _then(_$KycResponseDtoImpl(
      routingButton: null == routingButton
          ? _value.routingButton
          : routingButton // ignore: cast_nullable_to_non_nullable
              as RoutingButtonDto,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as KycStateDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KycResponseDtoImpl implements _KycResponseDto {
  const _$KycResponseDtoImpl(
      {required this.routingButton, required this.state});

  factory _$KycResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$KycResponseDtoImplFromJson(json);

  @override
  final RoutingButtonDto routingButton;
  @override
  final KycStateDto state;

  @override
  String toString() {
    return 'KycResponseDto(routingButton: $routingButton, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycResponseDtoImpl &&
            (identical(other.routingButton, routingButton) ||
                other.routingButton == routingButton) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, routingButton, state);

  /// Create a copy of KycResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KycResponseDtoImplCopyWith<_$KycResponseDtoImpl> get copyWith =>
      __$$KycResponseDtoImplCopyWithImpl<_$KycResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KycResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _KycResponseDto implements KycResponseDto {
  const factory _KycResponseDto(
      {required final RoutingButtonDto routingButton,
      required final KycStateDto state}) = _$KycResponseDtoImpl;

  factory _KycResponseDto.fromJson(Map<String, dynamic> json) =
      _$KycResponseDtoImpl.fromJson;

  @override
  RoutingButtonDto get routingButton;
  @override
  KycStateDto get state;

  /// Create a copy of KycResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KycResponseDtoImplCopyWith<_$KycResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KycStateDto _$KycStateDtoFromJson(Map<String, dynamic> json) {
  return _KycStateDto.fromJson(json);
}

/// @nodoc
mixin _$KycStateDto {
  KYCStatusDto get identityStatus => throw _privateConstructorUsedError;
  KYCStatusDto get phoneStatus => throw _privateConstructorUsedError;
  KYCStatusDto get faceStatus => throw _privateConstructorUsedError;
  KYCStatusDto get sayahStatus => throw _privateConstructorUsedError;

  /// Serializes this KycStateDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KycStateDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KycStateDtoCopyWith<KycStateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KycStateDtoCopyWith<$Res> {
  factory $KycStateDtoCopyWith(
          KycStateDto value, $Res Function(KycStateDto) then) =
      _$KycStateDtoCopyWithImpl<$Res, KycStateDto>;
  @useResult
  $Res call(
      {KYCStatusDto identityStatus,
      KYCStatusDto phoneStatus,
      KYCStatusDto faceStatus,
      KYCStatusDto sayahStatus});

  $KYCStatusDtoCopyWith<$Res> get identityStatus;
  $KYCStatusDtoCopyWith<$Res> get phoneStatus;
  $KYCStatusDtoCopyWith<$Res> get faceStatus;
  $KYCStatusDtoCopyWith<$Res> get sayahStatus;
}

/// @nodoc
class _$KycStateDtoCopyWithImpl<$Res, $Val extends KycStateDto>
    implements $KycStateDtoCopyWith<$Res> {
  _$KycStateDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KycStateDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identityStatus = null,
    Object? phoneStatus = null,
    Object? faceStatus = null,
    Object? sayahStatus = null,
  }) {
    return _then(_value.copyWith(
      identityStatus: null == identityStatus
          ? _value.identityStatus
          : identityStatus // ignore: cast_nullable_to_non_nullable
              as KYCStatusDto,
      phoneStatus: null == phoneStatus
          ? _value.phoneStatus
          : phoneStatus // ignore: cast_nullable_to_non_nullable
              as KYCStatusDto,
      faceStatus: null == faceStatus
          ? _value.faceStatus
          : faceStatus // ignore: cast_nullable_to_non_nullable
              as KYCStatusDto,
      sayahStatus: null == sayahStatus
          ? _value.sayahStatus
          : sayahStatus // ignore: cast_nullable_to_non_nullable
              as KYCStatusDto,
    ) as $Val);
  }

  /// Create a copy of KycStateDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KYCStatusDtoCopyWith<$Res> get identityStatus {
    return $KYCStatusDtoCopyWith<$Res>(_value.identityStatus, (value) {
      return _then(_value.copyWith(identityStatus: value) as $Val);
    });
  }

  /// Create a copy of KycStateDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KYCStatusDtoCopyWith<$Res> get phoneStatus {
    return $KYCStatusDtoCopyWith<$Res>(_value.phoneStatus, (value) {
      return _then(_value.copyWith(phoneStatus: value) as $Val);
    });
  }

  /// Create a copy of KycStateDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KYCStatusDtoCopyWith<$Res> get faceStatus {
    return $KYCStatusDtoCopyWith<$Res>(_value.faceStatus, (value) {
      return _then(_value.copyWith(faceStatus: value) as $Val);
    });
  }

  /// Create a copy of KycStateDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KYCStatusDtoCopyWith<$Res> get sayahStatus {
    return $KYCStatusDtoCopyWith<$Res>(_value.sayahStatus, (value) {
      return _then(_value.copyWith(sayahStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KycStateDtoImplCopyWith<$Res>
    implements $KycStateDtoCopyWith<$Res> {
  factory _$$KycStateDtoImplCopyWith(
          _$KycStateDtoImpl value, $Res Function(_$KycStateDtoImpl) then) =
      __$$KycStateDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {KYCStatusDto identityStatus,
      KYCStatusDto phoneStatus,
      KYCStatusDto faceStatus,
      KYCStatusDto sayahStatus});

  @override
  $KYCStatusDtoCopyWith<$Res> get identityStatus;
  @override
  $KYCStatusDtoCopyWith<$Res> get phoneStatus;
  @override
  $KYCStatusDtoCopyWith<$Res> get faceStatus;
  @override
  $KYCStatusDtoCopyWith<$Res> get sayahStatus;
}

/// @nodoc
class __$$KycStateDtoImplCopyWithImpl<$Res>
    extends _$KycStateDtoCopyWithImpl<$Res, _$KycStateDtoImpl>
    implements _$$KycStateDtoImplCopyWith<$Res> {
  __$$KycStateDtoImplCopyWithImpl(
      _$KycStateDtoImpl _value, $Res Function(_$KycStateDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of KycStateDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identityStatus = null,
    Object? phoneStatus = null,
    Object? faceStatus = null,
    Object? sayahStatus = null,
  }) {
    return _then(_$KycStateDtoImpl(
      identityStatus: null == identityStatus
          ? _value.identityStatus
          : identityStatus // ignore: cast_nullable_to_non_nullable
              as KYCStatusDto,
      phoneStatus: null == phoneStatus
          ? _value.phoneStatus
          : phoneStatus // ignore: cast_nullable_to_non_nullable
              as KYCStatusDto,
      faceStatus: null == faceStatus
          ? _value.faceStatus
          : faceStatus // ignore: cast_nullable_to_non_nullable
              as KYCStatusDto,
      sayahStatus: null == sayahStatus
          ? _value.sayahStatus
          : sayahStatus // ignore: cast_nullable_to_non_nullable
              as KYCStatusDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KycStateDtoImpl implements _KycStateDto {
  const _$KycStateDtoImpl(
      {required this.identityStatus,
      required this.phoneStatus,
      required this.faceStatus,
      required this.sayahStatus});

  factory _$KycStateDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$KycStateDtoImplFromJson(json);

  @override
  final KYCStatusDto identityStatus;
  @override
  final KYCStatusDto phoneStatus;
  @override
  final KYCStatusDto faceStatus;
  @override
  final KYCStatusDto sayahStatus;

  @override
  String toString() {
    return 'KycStateDto(identityStatus: $identityStatus, phoneStatus: $phoneStatus, faceStatus: $faceStatus, sayahStatus: $sayahStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycStateDtoImpl &&
            (identical(other.identityStatus, identityStatus) ||
                other.identityStatus == identityStatus) &&
            (identical(other.phoneStatus, phoneStatus) ||
                other.phoneStatus == phoneStatus) &&
            (identical(other.faceStatus, faceStatus) ||
                other.faceStatus == faceStatus) &&
            (identical(other.sayahStatus, sayahStatus) ||
                other.sayahStatus == sayahStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, identityStatus, phoneStatus, faceStatus, sayahStatus);

  /// Create a copy of KycStateDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KycStateDtoImplCopyWith<_$KycStateDtoImpl> get copyWith =>
      __$$KycStateDtoImplCopyWithImpl<_$KycStateDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KycStateDtoImplToJson(
      this,
    );
  }
}

abstract class _KycStateDto implements KycStateDto {
  const factory _KycStateDto(
      {required final KYCStatusDto identityStatus,
      required final KYCStatusDto phoneStatus,
      required final KYCStatusDto faceStatus,
      required final KYCStatusDto sayahStatus}) = _$KycStateDtoImpl;

  factory _KycStateDto.fromJson(Map<String, dynamic> json) =
      _$KycStateDtoImpl.fromJson;

  @override
  KYCStatusDto get identityStatus;
  @override
  KYCStatusDto get phoneStatus;
  @override
  KYCStatusDto get faceStatus;
  @override
  KYCStatusDto get sayahStatus;

  /// Create a copy of KycStateDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KycStateDtoImplCopyWith<_$KycStateDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KYCStatusDto _$KYCStatusDtoFromJson(Map<String, dynamic> json) {
  return _KYCStatus.fromJson(json);
}

/// @nodoc
mixin _$KYCStatusDto {
  KYCStatus get status => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this KYCStatusDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KYCStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KYCStatusDtoCopyWith<KYCStatusDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KYCStatusDtoCopyWith<$Res> {
  factory $KYCStatusDtoCopyWith(
          KYCStatusDto value, $Res Function(KYCStatusDto) then) =
      _$KYCStatusDtoCopyWithImpl<$Res, KYCStatusDto>;
  @useResult
  $Res call({KYCStatus status, String title, String description});
}

/// @nodoc
class _$KYCStatusDtoCopyWithImpl<$Res, $Val extends KYCStatusDto>
    implements $KYCStatusDtoCopyWith<$Res> {
  _$KYCStatusDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KYCStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as KYCStatus,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KYCStatusImplCopyWith<$Res>
    implements $KYCStatusDtoCopyWith<$Res> {
  factory _$$KYCStatusImplCopyWith(
          _$KYCStatusImpl value, $Res Function(_$KYCStatusImpl) then) =
      __$$KYCStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({KYCStatus status, String title, String description});
}

/// @nodoc
class __$$KYCStatusImplCopyWithImpl<$Res>
    extends _$KYCStatusDtoCopyWithImpl<$Res, _$KYCStatusImpl>
    implements _$$KYCStatusImplCopyWith<$Res> {
  __$$KYCStatusImplCopyWithImpl(
      _$KYCStatusImpl _value, $Res Function(_$KYCStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of KYCStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$KYCStatusImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as KYCStatus,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KYCStatusImpl implements _KYCStatus {
  const _$KYCStatusImpl(
      {required this.status, required this.title, required this.description});

  factory _$KYCStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$KYCStatusImplFromJson(json);

  @override
  final KYCStatus status;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'KYCStatusDto(status: $status, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KYCStatusImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, title, description);

  /// Create a copy of KYCStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KYCStatusImplCopyWith<_$KYCStatusImpl> get copyWith =>
      __$$KYCStatusImplCopyWithImpl<_$KYCStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KYCStatusImplToJson(
      this,
    );
  }
}

abstract class _KYCStatus implements KYCStatusDto {
  const factory _KYCStatus(
      {required final KYCStatus status,
      required final String title,
      required final String description}) = _$KYCStatusImpl;

  factory _KYCStatus.fromJson(Map<String, dynamic> json) =
      _$KYCStatusImpl.fromJson;

  @override
  KYCStatus get status;
  @override
  String get title;
  @override
  String get description;

  /// Create a copy of KYCStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KYCStatusImplCopyWith<_$KYCStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
