import 'package:banx/core/domain/entities/entity.dart';

class SendOtpEntity extends Entity {
  final bool needSignup;
  final bool? needReferralCode;
  final int? expiresIn;
  final int? codeLength;

  SendOtpEntity({
    required this.needSignup,
    this.needReferralCode,
    this.expiresIn,
    this.codeLength,
  });
}
