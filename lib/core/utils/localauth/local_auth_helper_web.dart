import 'package:local_auth/local_auth.dart';

import 'local_auth_helper.dart';

class LocalAuthHelperImpl implements LocalAuthHelper {
  final LocalAuthentication localAuthentication;

  LocalAuthHelperImpl(this.localAuthentication);

  @override
  Future<bool> get canCheckBiometrics async {
    return false; // Biometric authentication is not supported on web
  }

  @override
  Future<bool> authenticate() async {
    return false; // Authentication is not supported on web
  }
}
