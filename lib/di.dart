import 'package:banx/core/domain/repository/profile_repository.dart';
import 'package:banx/core/domain/repository/token_repository.dart';
import 'package:banx/core/networking/api_endpoints.dart';
import 'package:banx/core/networking/interceptors/auth_interceptor.dart';
import 'package:banx/core/networking/interceptors/info_interceptor.dart';
import 'package:banx/core/utils/configurations/banx_config.dart';
import 'package:banx/core/utils/localauth/local_auth_helper.dart';
import 'package:banx/di.config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'core/utils/localauth/local_auth_setup.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();

@module
abstract class RegisterModule {
  // You can register named preemptive types like follows
  @Named("BaseUrl")
  String get baseUrl => ApiEndpoint.baseUrl;

  @lazySingleton
  Logger logger() => Logger(printer: PrettyPrinter());

  @lazySingleton
  @Named('RefreshDio')
  Dio refreshDio(
    @Named('BaseUrl') String url,
    InfoInterceptor infoInterceptor,
    PrettyDioLogger prettyDioLogger,
  ) {
    final d = Dio()
      ..options.baseUrl = url
      ..interceptors.add(infoInterceptor);
    if (kDebugMode) d.interceptors.add(prettyDioLogger);
    return d;
  }

  @lazySingleton
  Dio dio(
    @Named('BaseUrl') String url,
    PrettyDioLogger prettyDioLogger,
    InfoInterceptor infoInterceptor,
    AuthInterceptor authInterceptor,
  ) {
    final dio = Dio()
      ..options.baseUrl = url
      ..interceptors.add(infoInterceptor)
      ..interceptors.add(authInterceptor);
    if (kDebugMode) dio.interceptors.add(prettyDioLogger);

    // After Dio is created, set it in the AuthInterceptor
    authInterceptor.setDio(dio);

    return dio;
  }

  @lazySingleton
  FlutterSecureStorage flutterSecureStorage() => const FlutterSecureStorage(
        iOptions: IOSOptions(
            accountName: "Banx",
            accessibility: KeychainAccessibility.first_unlock),
        aOptions: AndroidOptions(
          encryptedSharedPreferences: true,
        ),
      );

  @preResolve
  @lazySingleton
  Future<BanxConfig> banxConfig(
    TokenRepository tokenRepository,
    ProfileRepository profileRepository,
  ) async {
    return BanxConfig(
      tokenRepository: tokenRepository,
      profileRepository: profileRepository,
    );
  }

  @lazySingleton
  PrettyDioLogger prettyDioLogger() => PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: false,
      );

  @lazySingleton
  LocalAuthHelper localAuthHelperImpl(
          LocalAuthentication localAuthentication) =>
      LocalAuthHelperImpl(localAuthentication);

  @lazySingleton
  LocalAuthentication localAuthentication() => LocalAuthentication();
}
