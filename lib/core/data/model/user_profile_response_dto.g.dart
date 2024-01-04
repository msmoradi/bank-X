// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileResponseDtoImpl _$$UserProfileResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileResponseDtoImpl(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      firstNameEN: json['firstNameEN'] as String?,
      lastNameEN: json['lastNameEN'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      username: json['username'] as String?,
      nationalID: json['nationalID'] as String?,
      photoUrl: json['photoUrl'] as String?,
      hasPassword: json['hasPassword'] as bool?,
      nfcActive: json['nfcActive'] as bool?,
      profileStatus: json['profileStatus'] as String?,
      routingButton: json['routingButton'] == null
          ? null
          : RoutingButtonDto.fromJson(
              json['routingButton'] as Map<String, dynamic>),
      kycLevel: json['kycLevel'] as String?,
    );

Map<String, dynamic> _$$UserProfileResponseDtoImplToJson(
        _$UserProfileResponseDtoImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'firstNameEN': instance.firstNameEN,
      'lastNameEN': instance.lastNameEN,
      'phoneNumber': instance.phoneNumber,
      'username': instance.username,
      'nationalID': instance.nationalID,
      'photoUrl': instance.photoUrl,
      'hasPassword': instance.hasPassword,
      'nfcActive': instance.nfcActive,
      'profileStatus': instance.profileStatus,
      'routingButton': instance.routingButton,
      'kycLevel': instance.kycLevel,
    };
