import 'package:banx/core/domain/repository/token_repository.dart';

import 'base_config.dart';

class UserConfig extends BaseConfig {
  UserConfig(TokenRepository? tokenRepository)
      : super(tokenRepository: tokenRepository);
}

extension UserLogin on UserConfig {
/*  static const _isUserLoggedIn = "is_logged_in";

  Future _setLoginStatus(bool isUserLoggedIn) async {
    await tokenRepository?.setBool(_isUserLoggedIn, isUserLoggedIn);
  }

  bool isLoggedIn() {
    final isUserLoggedIn = tokenRepository?.getBool(_isUserLoggedIn) ?? false;
    return isUserLoggedIn;
  }

  Future logIn(String accessToken) async {
    await _setLoginStatus(true);
  }*/
}

extension UserAuthenticator on UserConfig {
/*  static const _isAuthenticatorEnabled = "is_authenticator_enabled";

  bool isAuthenticatorEnabled() {
    final isAuthenticatorEnabled =
        tokenRepository?.getBool(_isAuthenticatorEnabled) ?? false;
    return isAuthenticatorEnabled;
  }

  void setAuthenticatorStatus(bool? isAuthenticatorEnabled) {
    tokenRepository?.setBool(
        _isAuthenticatorEnabled, isAuthenticatorEnabled ?? false);
  }*/
}

extension UserInformation on UserConfig {
/*  static const _userUsername = "user_username";

  void setUserUsername(String? username) {
    if (username != null) {
      sharedPreferences?.setString(_userUsername, username);
    }
  }

  String? getUserUsername() {
    return sharedPreferences?.getString(_userUsername);
  }
}

extension UserLogout on UserConfig {
  void logOut(BuildContext context) {
    sharedPreferences?.clear();
  }*/
}
