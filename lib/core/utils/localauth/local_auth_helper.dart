abstract class LocalAuthHelper {
  Future<bool> get canCheckBiometrics;

  Future<bool> authenticate();
}
