
abstract class TokenRepository {
  Future<void> saveAccessToken(String accessToken);

  Future<void> saveRefreshToken(String refreshToken);

  Future<void> savePassword(String password);

  Future<String?> getPassword();

  Future<String?> getAccessToken();

  Future<String?> getRefreshToken();

  Future<void> deleteAccessToken();

  Future<void> deleteRefreshToken();

  Future<void> clearTokens();
}
