import 'package:banx/core/domain/entities/user_profile_entity.dart';

abstract class ProfileLocalDataSource {
  Future<UserProfileEntity?> getProfile();

  Future<void> saveProfile(UserProfileEntity profile);

  Future<void> nfcActive(bool active);
}
