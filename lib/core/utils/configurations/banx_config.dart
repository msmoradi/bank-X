import 'dart:async';

import 'package:banx/core/domain/entities/user_profile_entity.dart';
import 'package:banx/core/domain/repository/profile_repository.dart';
import 'package:banx/core/domain/repository/token_repository.dart';

class BanxConfig {
  final TokenRepository tokenRepository;
  final ProfileRepository profileRepository;

  BanxConfig({
    required this.tokenRepository,
    required this.profileRepository,
  });

  Future<bool> verifyPassword() async {
    final UserProfileEntity? profile =
        await profileRepository.getLocalProfile();
    final String? refreshToken = await tokenRepository.getRefreshToken();
    return profile != null && (refreshToken?.isNotEmpty ?? false);
  }
}
