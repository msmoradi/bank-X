// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfileResponseDto _$UserProfileResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _UserProfileResponseDto.fromJson(json);
}

/// @nodoc
mixin _$UserProfileResponseDto {
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get firstNameEN => throw _privateConstructorUsedError;
  String? get lastNameEN => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get nationalID => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  bool? get hasPassword => throw _privateConstructorUsedError;
  bool? get nfcActive => throw _privateConstructorUsedError;
  String? get profileStatus => throw _privateConstructorUsedError;
  RoutingButtonDto? get routingButton => throw _privateConstructorUsedError;
  String? get kycLevel => throw _privateConstructorUsedError;

  /// Serializes this UserProfileResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfileResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileResponseDtoCopyWith<UserProfileResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileResponseDtoCopyWith<$Res> {
  factory $UserProfileResponseDtoCopyWith(UserProfileResponseDto value,
          $Res Function(UserProfileResponseDto) then) =
      _$UserProfileResponseDtoCopyWithImpl<$Res, UserProfileResponseDto>;
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? firstNameEN,
      String? lastNameEN,
      String? phoneNumber,
      String? username,
      String? nationalID,
      String? photoUrl,
      bool? hasPassword,
      bool? nfcActive,
      String? profileStatus,
      RoutingButtonDto? routingButton,
      String? kycLevel});

  $RoutingButtonDtoCopyWith<$Res>? get routingButton;
}

/// @nodoc
class _$UserProfileResponseDtoCopyWithImpl<$Res,
        $Val extends UserProfileResponseDto>
    implements $UserProfileResponseDtoCopyWith<$Res> {
  _$UserProfileResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? firstNameEN = freezed,
    Object? lastNameEN = freezed,
    Object? phoneNumber = freezed,
    Object? username = freezed,
    Object? nationalID = freezed,
    Object? photoUrl = freezed,
    Object? hasPassword = freezed,
    Object? nfcActive = freezed,
    Object? profileStatus = freezed,
    Object? routingButton = freezed,
    Object? kycLevel = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstNameEN: freezed == firstNameEN
          ? _value.firstNameEN
          : firstNameEN // ignore: cast_nullable_to_non_nullable
              as String?,
      lastNameEN: freezed == lastNameEN
          ? _value.lastNameEN
          : lastNameEN // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      nationalID: freezed == nationalID
          ? _value.nationalID
          : nationalID // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      hasPassword: freezed == hasPassword
          ? _value.hasPassword
          : hasPassword // ignore: cast_nullable_to_non_nullable
              as bool?,
      nfcActive: freezed == nfcActive
          ? _value.nfcActive
          : nfcActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      profileStatus: freezed == profileStatus
          ? _value.profileStatus
          : profileStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      routingButton: freezed == routingButton
          ? _value.routingButton
          : routingButton // ignore: cast_nullable_to_non_nullable
              as RoutingButtonDto?,
      kycLevel: freezed == kycLevel
          ? _value.kycLevel
          : kycLevel // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of UserProfileResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoutingButtonDtoCopyWith<$Res>? get routingButton {
    if (_value.routingButton == null) {
      return null;
    }

    return $RoutingButtonDtoCopyWith<$Res>(_value.routingButton!, (value) {
      return _then(_value.copyWith(routingButton: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserProfileResponseDtoImplCopyWith<$Res>
    implements $UserProfileResponseDtoCopyWith<$Res> {
  factory _$$UserProfileResponseDtoImplCopyWith(
          _$UserProfileResponseDtoImpl value,
          $Res Function(_$UserProfileResponseDtoImpl) then) =
      __$$UserProfileResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? firstNameEN,
      String? lastNameEN,
      String? phoneNumber,
      String? username,
      String? nationalID,
      String? photoUrl,
      bool? hasPassword,
      bool? nfcActive,
      String? profileStatus,
      RoutingButtonDto? routingButton,
      String? kycLevel});

  @override
  $RoutingButtonDtoCopyWith<$Res>? get routingButton;
}

/// @nodoc
class __$$UserProfileResponseDtoImplCopyWithImpl<$Res>
    extends _$UserProfileResponseDtoCopyWithImpl<$Res,
        _$UserProfileResponseDtoImpl>
    implements _$$UserProfileResponseDtoImplCopyWith<$Res> {
  __$$UserProfileResponseDtoImplCopyWithImpl(
      _$UserProfileResponseDtoImpl _value,
      $Res Function(_$UserProfileResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? firstNameEN = freezed,
    Object? lastNameEN = freezed,
    Object? phoneNumber = freezed,
    Object? username = freezed,
    Object? nationalID = freezed,
    Object? photoUrl = freezed,
    Object? hasPassword = freezed,
    Object? nfcActive = freezed,
    Object? profileStatus = freezed,
    Object? routingButton = freezed,
    Object? kycLevel = freezed,
  }) {
    return _then(_$UserProfileResponseDtoImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstNameEN: freezed == firstNameEN
          ? _value.firstNameEN
          : firstNameEN // ignore: cast_nullable_to_non_nullable
              as String?,
      lastNameEN: freezed == lastNameEN
          ? _value.lastNameEN
          : lastNameEN // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      nationalID: freezed == nationalID
          ? _value.nationalID
          : nationalID // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      hasPassword: freezed == hasPassword
          ? _value.hasPassword
          : hasPassword // ignore: cast_nullable_to_non_nullable
              as bool?,
      nfcActive: freezed == nfcActive
          ? _value.nfcActive
          : nfcActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      profileStatus: freezed == profileStatus
          ? _value.profileStatus
          : profileStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      routingButton: freezed == routingButton
          ? _value.routingButton
          : routingButton // ignore: cast_nullable_to_non_nullable
              as RoutingButtonDto?,
      kycLevel: freezed == kycLevel
          ? _value.kycLevel
          : kycLevel // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileResponseDtoImpl implements _UserProfileResponseDto {
  const _$UserProfileResponseDtoImpl(
      {required this.firstName,
      required this.lastName,
      required this.firstNameEN,
      required this.lastNameEN,
      required this.phoneNumber,
      required this.username,
      required this.nationalID,
      required this.photoUrl,
      required this.hasPassword,
      required this.nfcActive,
      required this.profileStatus,
      required this.routingButton,
      required this.kycLevel});

  factory _$UserProfileResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileResponseDtoImplFromJson(json);

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? firstNameEN;
  @override
  final String? lastNameEN;
  @override
  final String? phoneNumber;
  @override
  final String? username;
  @override
  final String? nationalID;
  @override
  final String? photoUrl;
  @override
  final bool? hasPassword;
  @override
  final bool? nfcActive;
  @override
  final String? profileStatus;
  @override
  final RoutingButtonDto? routingButton;
  @override
  final String? kycLevel;

  @override
  String toString() {
    return 'UserProfileResponseDto(firstName: $firstName, lastName: $lastName, firstNameEN: $firstNameEN, lastNameEN: $lastNameEN, phoneNumber: $phoneNumber, username: $username, nationalID: $nationalID, photoUrl: $photoUrl, hasPassword: $hasPassword, nfcActive: $nfcActive, profileStatus: $profileStatus, routingButton: $routingButton, kycLevel: $kycLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileResponseDtoImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.firstNameEN, firstNameEN) ||
                other.firstNameEN == firstNameEN) &&
            (identical(other.lastNameEN, lastNameEN) ||
                other.lastNameEN == lastNameEN) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.nationalID, nationalID) ||
                other.nationalID == nationalID) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.hasPassword, hasPassword) ||
                other.hasPassword == hasPassword) &&
            (identical(other.nfcActive, nfcActive) ||
                other.nfcActive == nfcActive) &&
            (identical(other.profileStatus, profileStatus) ||
                other.profileStatus == profileStatus) &&
            (identical(other.routingButton, routingButton) ||
                other.routingButton == routingButton) &&
            (identical(other.kycLevel, kycLevel) ||
                other.kycLevel == kycLevel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      lastName,
      firstNameEN,
      lastNameEN,
      phoneNumber,
      username,
      nationalID,
      photoUrl,
      hasPassword,
      nfcActive,
      profileStatus,
      routingButton,
      kycLevel);

  /// Create a copy of UserProfileResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileResponseDtoImplCopyWith<_$UserProfileResponseDtoImpl>
      get copyWith => __$$UserProfileResponseDtoImplCopyWithImpl<
          _$UserProfileResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _UserProfileResponseDto implements UserProfileResponseDto {
  const factory _UserProfileResponseDto(
      {required final String? firstName,
      required final String? lastName,
      required final String? firstNameEN,
      required final String? lastNameEN,
      required final String? phoneNumber,
      required final String? username,
      required final String? nationalID,
      required final String? photoUrl,
      required final bool? hasPassword,
      required final bool? nfcActive,
      required final String? profileStatus,
      required final RoutingButtonDto? routingButton,
      required final String? kycLevel}) = _$UserProfileResponseDtoImpl;

  factory _UserProfileResponseDto.fromJson(Map<String, dynamic> json) =
      _$UserProfileResponseDtoImpl.fromJson;

  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get firstNameEN;
  @override
  String? get lastNameEN;
  @override
  String? get phoneNumber;
  @override
  String? get username;
  @override
  String? get nationalID;
  @override
  String? get photoUrl;
  @override
  bool? get hasPassword;
  @override
  bool? get nfcActive;
  @override
  String? get profileStatus;
  @override
  RoutingButtonDto? get routingButton;
  @override
  String? get kycLevel;

  /// Create a copy of UserProfileResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileResponseDtoImplCopyWith<_$UserProfileResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
