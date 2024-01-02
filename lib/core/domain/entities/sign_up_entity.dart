import 'package:banx/core/domain/entities/entity.dart';

class SignUpEntity extends Entity {
  final int expiresIn;
  final int codeLength;

  SignUpEntity({required this.expiresIn, required this.codeLength});
}
