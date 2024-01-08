import 'package:banx/core/data/datasource/local/profile_local_datasource.dart';
import 'package:banx/core/domain/entities/user_profile_entity.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProfileLocalDataSource)
class ProfileLocalDataSourceImpl extends ProfileLocalDataSource {
  final FlutterSecureStorage secureStorage;

  ProfileLocalDataSourceImpl({required this.secureStorage});

  static const _firstNameKey = 'FIRST_NAME';
  static const _lastNameKey = 'LAST_NAME';
  static const _firstNameENKey = 'FIRST_NAME_EN';
  static const _lastNameENKey = 'LAST_NAME_EN';
  static const _phoneNumberKey = 'PHONE_NUMBER';
  static const _usernameKey = 'USERNAME';
  static const _nationalIDKey = 'NATIONAL_ID';
  static const _photoUrlKey = 'PHOTO_URL';
  static const _hasPasswordKey = 'HAS_PASSWORD';
  static const _profileStatusKey = 'PROFILE_STATUS';
  static const _kycLevelKey = 'KYC_LEVEL';
  static const _nfcActiveKey = 'NFC_ACTIVE';

  @override
  Future<UserProfileEntity?> getProfile() async {
    final firstName = await secureStorage.read(key: _firstNameKey);
    final lastName = await secureStorage.read(key: _lastNameKey);
    final firstNameEN = await secureStorage.read(key: _firstNameENKey);
    final lastNameEN = await secureStorage.read(key: _lastNameENKey);
    final phoneNumber = await secureStorage.read(key: _phoneNumberKey);
    final username = await secureStorage.read(key: _usernameKey);
    final nationalID = await secureStorage.read(key: _nationalIDKey);
    final photoUrl = await secureStorage.read(key: _photoUrlKey);
    final hasPassword =
        (await secureStorage.read(key: _hasPasswordKey)) == 'true';
    final nfcActive =
        (await secureStorage.read(key: _nfcActiveKey)) == 'true';
    final profileStatus = await secureStorage.read(key: _profileStatusKey);
    final kycLevel = await secureStorage.read(key: _kycLevelKey);

    if (firstName?.isNotEmpty == false &&
        lastName?.isNotEmpty == false &&
        phoneNumber?.isNotEmpty == false &&
        nationalID?.isNotEmpty == false) {
      return null; // Handle the case when no profile exists
    }

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
      profileStatus: profileStatus,
      routingButtonEntity: null,
      kycLevel: kycLevel,
      nfcActive: nfcActive,
    );
  }

  @override
  Future<void> saveProfile(UserProfileEntity profile) async {
    await secureStorage.write(key: _firstNameKey, value: profile.firstName);
    await secureStorage.write(key: _lastNameKey, value: profile.lastName);
    await secureStorage.write(key: _firstNameENKey, value: profile.firstNameEN);
    await secureStorage.write(key: _lastNameENKey, value: profile.lastNameEN);
    await secureStorage.write(key: _phoneNumberKey, value: profile.phoneNumber);
    await secureStorage.write(key: _usernameKey, value: profile.username);
    await secureStorage.write(key: _nationalIDKey, value: profile.nationalID);
    await secureStorage.write(key: _photoUrlKey, value: profile.photoUrl);
    await secureStorage.write(
        key: _hasPasswordKey, value: profile.hasPassword.toString());
    await secureStorage.write(
        key: _profileStatusKey, value: profile.profileStatus);
    await secureStorage.write(key: _kycLevelKey, value: profile.kycLevel);
  }

  @override
  Future<void> nfcActive(bool active) async {
    await secureStorage.write(key: _nfcActiveKey, value: active.toString());
  }
}
