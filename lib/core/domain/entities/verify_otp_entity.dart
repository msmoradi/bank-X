import 'package:banx/core/domain/entities/entity.dart';

class TokenEntity extends Entity {
  final String? accessToken;
  final String? refreshToken;

  TokenEntity({
    required this.accessToken,
    this.refreshToken,
  });
}
