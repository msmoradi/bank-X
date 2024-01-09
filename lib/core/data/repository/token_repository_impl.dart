import 'package:banx/core/domain/repository/token_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TokenRepository)
class TokenRepositoryImpl implements TokenRepository {
  final FlutterSecureStorage secureStorage;

  TokenRepositoryImpl({required this.secureStorage});

  static const _accessTokenKey = 'ACCESS_TOKEN';
  static const _refreshTokenKey = 'REFRESH_TOKEN';
  static const _passwordKey = 'PASSWORD';

  @override
  Future<void> saveAccessToken(String accessToken) async {
    await secureStorage.write(key: _accessTokenKey, value: accessToken);
  }

  @override
  Future<void> saveRefreshToken(String refreshToken) async {
    await secureStorage.write(key: _refreshTokenKey, value: refreshToken);
  }

  @override
  Future<void> savePassword(String password) async {
    await secureStorage.write(key: _passwordKey, value: password);
  }

  @override
  Future<String?> getPassword() async {
    return await secureStorage.read(key: _passwordKey);
  }

  @override
  Future<String?> getAccessToken() async {
    return await secureStorage.read(key: _accessTokenKey);
  }

  @override
  Future<String?> getRefreshToken() async {
    return await secureStorage.read(key: _refreshTokenKey);
  }

  @override
  Future<void> deleteAccessToken() async {
    await secureStorage.delete(key: _accessTokenKey);
  }

  @override
  Future<void> deleteRefreshToken() async {
    await secureStorage.delete(key: _refreshTokenKey);
  }

  @override
  Future<void> clearTokens() async {
    await secureStorage.deleteAll();
  }
}
