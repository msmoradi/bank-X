import 'package:banx/core/data/mapper/routing_button_mapper.dart';
import 'package:banx/core/data/model/user_profile_response_dto.dart';
import 'package:banx/core/domain/entities/user_profile_entity.dart';

extension UserProfileMapper on UserProfileResponseDto {
  UserProfileEntity toEntity() {
    return UserProfileEntity(
      firstName: firstName,
      lastName: lastName,
      firstNameEN: firstNameEN,
      lastNameEN: lastNameEN,
      phoneNumber: phoneNumber,
      username: username,
      nationalID: nationalID,
      photoUrl: photoUrl,
      hasPassword: hasPassword,
      nfcActive: nfcActive,
      profileStatus: profileStatus,
      routingButtonEntity: routingButton?.toEntity(),
      kycLevel: kycLevel,
    );
  }
}
