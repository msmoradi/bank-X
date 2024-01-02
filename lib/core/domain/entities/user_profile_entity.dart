import 'package:banx/core/domain/entities/entity.dart';
import 'package:banx/core/domain/entities/routing_button_entity.dart';

class UserProfileEntity extends Entity {
  final String? firstName;
  final String? lastName;
  final String? firstNameEN;
  final String? lastNameEN;
  final String? phoneNumber;
  final String? username;
  final String? nationalID;
  final String? photoUrl;
  final bool? hasPassword;
  final bool? nfcActive;
  final String? profileStatus;
  final RoutingButtonEntity? routingButtonEntity;
  final String? kycLevel;

  UserProfileEntity(
      {required this.firstName,
      required this.lastName,
      required this.firstNameEN,
      required this.lastNameEN,
      required this.phoneNumber,
      required this.nfcActive,
      required this.username,
      required this.nationalID,
      required this.photoUrl,
      required this.hasPassword,
      required this.profileStatus,
      required this.routingButtonEntity,
      required this.kycLevel});
}


