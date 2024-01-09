import 'dart:async';
import 'package:banx/core/data/datasource/remote/authentication_remote_datasource.dart';
import 'package:banx/core/data/mapper/kyc_mapper.dart';
import 'package:banx/core/data/mapper/response.mapper.dart';
import 'package:banx/core/domain/entities/empty_entity.dart';
import 'package:banx/core/domain/entities/entity.dart';
import 'package:banx/core/domain/entities/kyc_state_entity.dart';
import 'package:banx/core/domain/entities/send_otp_entity.dart';
import 'package:banx/core/domain/entities/sign_up_entity.dart';
import 'package:banx/core/domain/entities/verify_otp_entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';
import 'package:banx/core/domain/repository/authentication_repository.dart';
import 'package:banx/core/domain/repository/profile_repository.dart';
import 'package:banx/core/domain/repository/token_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthenticationRepository)
class AuthenticationRepositoryImpl extends AuthenticationRepository {
  final AuthenticationRemoteDataSource authenticationRemoteDataSource;
  final TokenRepository tokenRepository;
  final ProfileRepository profileRepository;

  AuthenticationRepositoryImpl({
    required this.authenticationRemoteDataSource,
    required this.tokenRepository,
    required this.profileRepository,
  });

  @override
  Future<EntityWrapper<Entity>> verifyOtp({
    required String phoneNumber,
    required String otp,
  }) {
    return authenticationRemoteDataSource
        .verifyOtp(phoneNumber, otp)
        .mapResponseToEntityWrapper(mapper: (model) {
      return TokenEntity(
        accessToken: model.accessToken,
        refreshToken: model.refreshToken,
      );
    }).then((entityWrapper) async {
      if (entityWrapper is SuccessEntityWrapper<TokenEntity>) {
        await saveTokens(
            accessToken: entityWrapper.data.accessToken,
            refreshToken: entityWrapper.data.refreshToken);

        return await profileRepository.getProfile();
      }
      return entityWrapper;
    });
  }

  @override
  Future<EntityWrapper<Entity>> postPassword({
    required String password,
  }) {
    return authenticationRemoteDataSource
        .postPassword(password)
        .mapResponseToEntityWrapper(mapper: (model) {
      return TokenEntity(
        accessToken: model.accessToken,
      );
    }).then((entityWrapper) async {
      if (entityWrapper is SuccessEntityWrapper<TokenEntity>) {
        await saveTokens(
            accessToken: entityWrapper.data.accessToken,
            refreshToken: entityWrapper.data.refreshToken);

        return await profileRepository.getProfile();
      }
      return entityWrapper;
    });
  }

  @override
  Future<EntityWrapper<Entity>> putPassword({
    required String password,
  }) {
    return authenticationRemoteDataSource
        .putPassword(password)
        .mapResponseToEntityWrapper(mapper: (model) {
      return EmptyEntity();
    }).then((entityWrapper) async {
      if (entityWrapper is SuccessEntityWrapper<EmptyEntity>) {
        final postResponse = await postPassword(password: password);
        if (postResponse.isSuccess) {
          return await profileRepository.getProfile();
        } else {
          return postResponse;
        }
      }
      return entityWrapper;
    });
  }

  @override
  Future<EntityWrapper<KycStateEntity>> kyc() {
    return authenticationRemoteDataSource
        .kyc()
        .mapResponseToEntityWrapper(mapper: (dto) => dto.toEntity());
  }

  @override
  Future<EntityWrapper<SignUpEntity>> signup({
    required String phoneNumber,
    required String nationalId,
    required String birthDate,
    String? referralCode,
  }) {
    return authenticationRemoteDataSource
        .signup(
            phoneNumber: phoneNumber,
            nationalId: nationalId,
            birthDate: birthDate,
            referralCode: referralCode)
        .mapResponseToEntityWrapper(mapper: (model) {
      return SignUpEntity(
        expiresIn: model.expiresIn,
        codeLength: model.codeLength,
      );
    });
  }

  @override
  Future<EntityWrapper<SignUpEntity>> identityCorrection({
    required String birthDate,
  }) {
    return authenticationRemoteDataSource
        .identityCorrection(birthDate: birthDate)
        .mapResponseToEntityWrapper(mapper: (model) {
      return SignUpEntity(
        expiresIn: model.expiresIn,
        codeLength: model.codeLength,
      );
    });
  }

  @override
  Future<EntityWrapper<SendOtpEntity>> sendOtp({required String phoneNumber}) {
    return authenticationRemoteDataSource
        .sendOtp(phoneNumber)
        .mapResponseToEntityWrapper(mapper: (model) {
      return SendOtpEntity(
        needSignup: model.needSignup,
        needReferralCode: model.needReferralCode,
        expiresIn: model.expiresIn,
        codeLength: model.codeLength,
      );
    });
  }

  Future<void> saveTokens({String? accessToken, String? refreshToken}) async {
    if (accessToken != null) {
      await tokenRepository.saveAccessToken(accessToken);
    }

    if (refreshToken != null) {
      await tokenRepository.saveRefreshToken(refreshToken);
    }
  }
}
