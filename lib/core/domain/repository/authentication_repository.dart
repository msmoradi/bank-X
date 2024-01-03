import 'package:banx/core/domain/entities/entity.dart';
import 'package:banx/core/domain/entities/kyc_state_entity.dart';
import 'package:banx/core/domain/entities/send_otp_entity.dart';
import 'package:banx/core/domain/entities/sign_up_entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';

abstract class AuthenticationRepository {
  Future<EntityWrapper<SendOtpEntity>> sendOtp({
    required String phoneNumber,
  });

  Future<EntityWrapper<Entity>> verifyOtp({
    required String phoneNumber,
    required String otp,
  });

  Future<EntityWrapper<Entity>> postPassword({
    required String password,
  });

  Future<EntityWrapper<Entity>> putPassword({
    required String password,
  });

  Future<EntityWrapper<KycStateEntity>> kyc();

  Future<EntityWrapper<SignUpEntity>> signup({
    required String phoneNumber,
    required String nationalId,
    required String birthDate,
    String? referralCode,
  });

  Future<EntityWrapper<SignUpEntity>> identityCorrection({
    required String birthDate,
  });
}
