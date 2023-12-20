import 'package:local_auth/local_auth.dart';

import 'local_auth_helper.dart';

class LocalAuthHelperImpl implements LocalAuthHelper {
  final LocalAuthentication localAuthentication;

  LocalAuthHelperImpl(this.localAuthentication);

  @override
  Future<bool> get canCheckBiometrics => localAuthentication.canCheckBiometrics;

  @override
  Future<bool> authenticate() async {
    return await localAuthentication.authenticate(
      localizedReason: 'Please authenticate to access your password',
      options: const AuthenticationOptions(
        biometricOnly: true,
      ),
    );
  }
}
