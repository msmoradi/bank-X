// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:banx/core/data/datasource/local/profile_local_datasource.dart'
    as _i904;
import 'package:banx/core/data/datasource/local/profile_local_datasource_impl.dart'
    as _i335;
import 'package:banx/core/data/datasource/remote/address_remote_datasource.dart'
    as _i767;
import 'package:banx/core/data/datasource/remote/address_remote_datasource_impl.dart'
    as _i479;
import 'package:banx/core/data/datasource/remote/authentication_remote_datasource.dart'
    as _i84;
import 'package:banx/core/data/datasource/remote/authentication_remote_datasource_impl.dart'
    as _i149;
import 'package:banx/core/data/datasource/remote/card_remote_datasource.dart'
    as _i521;
import 'package:banx/core/data/datasource/remote/card_remote_datasource_impl.dart'
    as _i749;
import 'package:banx/core/data/datasource/remote/media_remote_data_source.dart'
    as _i665;
import 'package:banx/core/data/datasource/remote/media_remote_data_source_impl.dart'
    as _i55;
import 'package:banx/core/data/datasource/remote/passkey_remote_data_source.dart'
    as _i79;
import 'package:banx/core/data/datasource/remote/passkey_remote_data_source_impl.dart'
    as _i596;
import 'package:banx/core/data/datasource/remote/profile_remote_datasource.dart'
    as _i264;
import 'package:banx/core/data/datasource/remote/profile_remote_datasource_impl.dart'
    as _i192;
import 'package:banx/core/data/repository/address_repository_impl.dart'
    as _i794;
import 'package:banx/core/data/repository/authentication_repository_impl.dart'
    as _i450;
import 'package:banx/core/data/repository/card_repository_impl.dart' as _i339;
import 'package:banx/core/data/repository/media_repository_impl.dart' as _i244;
import 'package:banx/core/data/repository/passkey_repository_impl.dart'
    as _i415;
import 'package:banx/core/data/repository/profile_repository_impl.dart'
    as _i728;
import 'package:banx/core/data/repository/token_repository_impl.dart' as _i205;
import 'package:banx/core/domain/repository/address_repository.dart' as _i648;
import 'package:banx/core/domain/repository/authentication_repository.dart'
    as _i474;
import 'package:banx/core/domain/repository/card_repository.dart' as _i831;
import 'package:banx/core/domain/repository/media_repository.dart' as _i654;
import 'package:banx/core/domain/repository/passkey_repository.dart' as _i742;
import 'package:banx/core/domain/repository/profile_repository.dart' as _i111;
import 'package:banx/core/domain/repository/token_repository.dart' as _i232;
import 'package:banx/core/networking/api_service.dart' as _i243;
import 'package:banx/core/networking/http_client.dart' as _i1033;
import 'package:banx/core/networking/interceptors/auth_interceptor.dart'
    as _i287;
import 'package:banx/core/networking/interceptors/info_interceptor.dart'
    as _i535;
import 'package:banx/core/utils/configurations/banx_config.dart' as _i962;
import 'package:banx/core/utils/localauth/local_auth_helper.dart' as _i877;
import 'package:banx/di.dart' as _i0;
import 'package:banx/feature/add_address/presentation/bloc/add_address_bloc.dart'
    as _i759;
import 'package:banx/feature/assist/presentation/bloc/assist_bloc.dart' as _i20;
import 'package:banx/feature/bank/presentation/bloc/bank_bloc.dart' as _i864;
import 'package:banx/feature/card_activation/presentation/bloc/card_activation_bloc.dart'
    as _i582;
import 'package:banx/feature/card_activation_otp/presentation/bloc/card_activation_otp_bloc.dart'
    as _i260;
import 'package:banx/feature/card_delivery_time/presentation/bloc/card_delivery_time_bloc.dart'
    as _i501;
import 'package:banx/feature/check_postal_code/presentation/bloc/check_postal_code_bloc.dart'
    as _i230;
import 'package:banx/feature/confirm_password/presentation/bloc/confirm_password_bloc.dart'
    as _i339;
import 'package:banx/feature/enable_biometric/presentation/bloc/enable_biometric_bloc.dart'
    as _i807;
import 'package:banx/feature/face_detection/presentation/bloc/face_detection_bloc.dart'
    as _i887;
import 'package:banx/feature/home/presentation/bloc/home_bloc.dart' as _i412;
import 'package:banx/feature/identity/presentation/bloc/identity_bloc.dart'
    as _i665;
import 'package:banx/feature/identity_correction/presentation/bloc/identity_correction_bloc.dart'
    as _i801;
import 'package:banx/feature/kyc_status/presentation/bloc/kyc_status_bloc.dart'
    as _i618;
import 'package:banx/feature/main/presentation/bloc/main_bloc.dart' as _i381;
import 'package:banx/feature/national_serial/presentation/bloc/national_serial_bloc.dart'
    as _i61;
import 'package:banx/feature/phone/presentation/bloc/phone_bloc.dart' as _i402;
import 'package:banx/feature/profile/presentation/bloc/profile_bloc.dart'
    as _i804;
import 'package:banx/feature/select_address/presentation/bloc/select_address_bloc.dart'
    as _i922;
import 'package:banx/feature/select_card/presentation/bloc/select_card_bloc.dart'
    as _i266;
import 'package:banx/feature/splash/presentation/bloc/splash_bloc.dart' as _i48;
import 'package:banx/feature/transaction/presentation/bloc/transaction_bloc.dart'
    as _i737;
import 'package:banx/feature/transaction_checkout/presentation/bloc/transaction_checkout_bloc.dart'
    as _i578;
import 'package:banx/feature/transaction_destination/presentation/bloc/transaction_destination_bloc.dart'
    as _i664;
import 'package:banx/feature/verify_otp/presentation/bloc/verify_otp_bloc.dart'
    as _i798;
import 'package:banx/feature/verify_password/presentation/bloc/verify_password_bloc.dart'
    as _i67;
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:local_auth/local_auth.dart' as _i152;
import 'package:logger/logger.dart' as _i974;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i528;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i535.InfoInterceptor>(() => _i535.InfoInterceptor());
    gh.factory<_i737.TransactionBloc>(() => _i737.TransactionBloc());
    gh.factory<_i20.AssistBloc>(() => _i20.AssistBloc());
    gh.factory<_i864.BankBloc>(() => _i864.BankBloc());
    gh.factory<_i664.TransactionDestinationBloc>(
        () => _i664.TransactionDestinationBloc());
    gh.factory<_i381.MainBloc>(() => _i381.MainBloc());
    gh.factory<_i578.TransactionCheckoutBloc>(
        () => _i578.TransactionCheckoutBloc());
    gh.lazySingleton<_i974.Logger>(() => registerModule.logger());
    gh.lazySingleton<_i558.FlutterSecureStorage>(
        () => registerModule.flutterSecureStorage());
    gh.lazySingleton<_i528.PrettyDioLogger>(
        () => registerModule.prettyDioLogger());
    gh.lazySingleton<_i152.LocalAuthentication>(
        () => registerModule.localAuthentication());
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.lazySingleton<_i877.LocalAuthHelper>(() =>
        registerModule.localAuthHelperImpl(gh<_i152.LocalAuthentication>()));
    gh.lazySingleton<_i232.TokenRepository>(() => _i205.TokenRepositoryImpl(
        secureStorage: gh<_i558.FlutterSecureStorage>()));
    gh.lazySingleton<_i904.ProfileLocalDataSource>(() =>
        _i335.ProfileLocalDataSourceImpl(
            secureStorage: gh<_i558.FlutterSecureStorage>()));
    gh.lazySingleton<_i361.Dio>(
      () => registerModule.refreshDio(
        gh<String>(instanceName: 'BaseUrl'),
        gh<_i535.InfoInterceptor>(),
        gh<_i528.PrettyDioLogger>(),
      ),
      instanceName: 'RefreshDio',
    );
    gh.lazySingleton<_i287.AuthInterceptor>(() => _i287.AuthInterceptor(
          tokenRepository: gh<_i232.TokenRepository>(),
          refreshDio: gh<_i361.Dio>(instanceName: 'RefreshDio'),
          logger: gh<_i974.Logger>(),
        ));
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio(
          gh<String>(instanceName: 'BaseUrl'),
          gh<_i528.PrettyDioLogger>(),
          gh<_i535.InfoInterceptor>(),
          gh<_i287.AuthInterceptor>(),
        ));
    gh.lazySingleton<_i1033.HTTPClient>(() => _i243.ApiService(
          dio: gh<_i361.Dio>(),
          tokenRepository: gh<_i232.TokenRepository>(),
        ));
    gh.lazySingleton<_i521.CardRemoteDataSource>(() =>
        _i749.CardRemoteDataSourceImpl(apiService: gh<_i1033.HTTPClient>()));
    gh.lazySingleton<_i79.PasskeyRemoteDataSource>(() =>
        _i596.PasskeyRemoteDataSourceImpl(apiService: gh<_i1033.HTTPClient>()));
    gh.lazySingleton<_i767.AddressRemoteDataSource>(() =>
        _i479.AddressRemoteDataSourceImpl(apiService: gh<_i1033.HTTPClient>()));
    gh.lazySingleton<_i665.MediaRemoteDataSource>(() =>
        _i55.MediaRemoteDataSourceImpl(apiService: gh<_i1033.HTTPClient>()));
    gh.lazySingleton<_i84.AuthenticationRemoteDataSource>(() =>
        _i149.AuthenticationRemoteDataSourceImpl(
            apiService: gh<_i1033.HTTPClient>()));
    gh.lazySingleton<_i264.ProfileRemoteDataSource>(() =>
        _i192.ProfileRemoteDataSourceImpl(apiService: gh<_i1033.HTTPClient>()));
    gh.lazySingleton<_i111.ProfileRepository>(() => _i728.ProfileRepositoryImpl(
          profileLocalDataSource: gh<_i904.ProfileLocalDataSource>(),
          profileRemoteDataSource: gh<_i264.ProfileRemoteDataSource>(),
        ));
    await gh.lazySingletonAsync<_i962.BanxConfig>(
      () => registerModule.banxConfig(
        gh<_i232.TokenRepository>(),
        gh<_i111.ProfileRepository>(),
      ),
      preResolve: true,
    );
    gh.lazySingleton<_i742.PasskeyRepository>(() => _i415.PasskeyRepositoryImpl(
        remoteDataSource: gh<_i79.PasskeyRemoteDataSource>()));
    gh.factory<_i804.ProfileBloc>(() => _i804.ProfileBloc(
          profileRepository: gh<_i111.ProfileRepository>(),
          tokenRepository: gh<_i232.TokenRepository>(),
        ));
    gh.factory<_i807.EnableBiometricBloc>(() => _i807.EnableBiometricBloc(
          profileRepository: gh<_i111.ProfileRepository>(),
          localAuthentication: gh<_i152.LocalAuthentication>(),
          tokenRepository: gh<_i232.TokenRepository>(),
        ));
    gh.lazySingleton<_i648.AddressRepository>(() => _i794.AddressRepositoryImpl(
        addressRemoteDataSource: gh<_i767.AddressRemoteDataSource>()));
    gh.lazySingleton<_i654.MediaRepository>(
        () => _i244.MediaRepositoryImpl(gh<_i665.MediaRemoteDataSource>()));
    gh.factory<_i48.SplashBloc>(() => _i48.SplashBloc(
          tokenRepository: gh<_i232.TokenRepository>(),
          profileRepository: gh<_i111.ProfileRepository>(),
        ));
    gh.factory<_i412.HomeBloc>(
        () => _i412.HomeBloc(profileRepository: gh<_i111.ProfileRepository>()));
    gh.lazySingleton<_i474.AuthenticationRepository>(
        () => _i450.AuthenticationRepositoryImpl(
              authenticationRemoteDataSource:
                  gh<_i84.AuthenticationRemoteDataSource>(),
              tokenRepository: gh<_i232.TokenRepository>(),
              profileRepository: gh<_i111.ProfileRepository>(),
            ));
    gh.factory<_i61.NationalSerialBloc>(() => _i61.NationalSerialBloc(
        addressRepository: gh<_i648.AddressRepository>()));
    gh.factory<_i230.CheckPostalCodeBloc>(() => _i230.CheckPostalCodeBloc(
        addressRepository: gh<_i648.AddressRepository>()));
    gh.lazySingleton<_i831.CardRepository>(() => _i339.CardRepositoryImpl(
          cardRemoteDataSource: gh<_i521.CardRemoteDataSource>(),
          profileRepository: gh<_i111.ProfileRepository>(),
        ));
    gh.factory<_i759.AddAddressBloc>(() => _i759.AddAddressBloc(
          addressRepository: gh<_i648.AddressRepository>(),
          cardRepository: gh<_i831.CardRepository>(),
        ));
    gh.factory<_i501.CardDeliveryTimeBloc>(() =>
        _i501.CardDeliveryTimeBloc(cardRepository: gh<_i831.CardRepository>()));
    gh.factory<_i922.SelectAddressBloc>(() =>
        _i922.SelectAddressBloc(cardRepository: gh<_i831.CardRepository>()));
    gh.factory<_i887.FaceDetectionBloc>(() => _i887.FaceDetectionBloc(
          gh<_i654.MediaRepository>(),
          gh<_i111.ProfileRepository>(),
        ));
    gh.factory<_i582.CardActivationBloc>(() => _i582.CardActivationBloc(
        authenticationRepository: gh<_i474.AuthenticationRepository>()));
    gh.factory<_i798.VerifyOtpBloc>(() => _i798.VerifyOtpBloc(
        authenticationRepository: gh<_i474.AuthenticationRepository>()));
    gh.factory<_i665.IdentityBloc>(() => _i665.IdentityBloc(
        authenticationRepository: gh<_i474.AuthenticationRepository>()));
    gh.factory<_i260.CardActivationOtpBloc>(() => _i260.CardActivationOtpBloc(
        authenticationRepository: gh<_i474.AuthenticationRepository>()));
    gh.factory<_i402.PhoneBloc>(() => _i402.PhoneBloc(
        authenticationRepository: gh<_i474.AuthenticationRepository>()));
    gh.factory<_i618.KycStatusBloc>(() => _i618.KycStatusBloc(
        authenticationRepository: gh<_i474.AuthenticationRepository>()));
    gh.factory<_i801.IdentityCorrectionBloc>(() => _i801.IdentityCorrectionBloc(
        authenticationRepository: gh<_i474.AuthenticationRepository>()));
    gh.factory<_i339.ConfirmPasswordBloc>(() => _i339.ConfirmPasswordBloc(
          authenticationRepository: gh<_i474.AuthenticationRepository>(),
          profileRepository: gh<_i111.ProfileRepository>(),
        ));
    gh.factory<_i266.SelectCardBloc>(() => _i266.SelectCardBloc(
          cardRepository: gh<_i831.CardRepository>(),
          addressRepository: gh<_i648.AddressRepository>(),
        ));
    gh.factory<_i67.VerifyPasswordBloc>(() => _i67.VerifyPasswordBloc(
          authenticationRepository: gh<_i474.AuthenticationRepository>(),
          tokenRepository: gh<_i232.TokenRepository>(),
          profileRepository: gh<_i111.ProfileRepository>(),
          localAuthentication: gh<_i877.LocalAuthHelper>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i0.RegisterModule {}
