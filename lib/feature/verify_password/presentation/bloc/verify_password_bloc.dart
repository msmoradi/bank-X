import 'dart:async';

import 'package:banx/core/domain/entities/user_profile_entity.dart';
import 'package:banx/core/domain/repository/authentication_repository.dart';
import 'package:banx/core/domain/repository/profile_repository.dart';
import 'package:banx/core/domain/repository/token_repository.dart';
import 'package:banx/core/utils/extension/strings.dart';
import 'package:banx/core/utils/localauth/local_auth_helper.dart';
import 'package:banx/feature/verify_password/presentation/bloc/verify_password_state.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'verify_password_event.dart';

@injectable
class VerifyPasswordBloc
    extends Bloc<VerifyPasswordEvent, VerifyPasswordState> {
  final AuthenticationRepository authenticationRepository;
  final TokenRepository tokenRepository;
  final ProfileRepository profileRepository;
  final LocalAuthHelper localAuthentication;

  VerifyPasswordBloc({
    required this.authenticationRepository,
    required this.tokenRepository,
    required this.profileRepository,
    required this.localAuthentication,
  }) : super(const VerifyPasswordState(status: VerifyPasswordStatus.loading)) {
    on<VerifyPasswordSubmitted>(_onVerifyPasswordSubmitted);
    on<BiometricsSubmitted>(_onBiometricsSubmitted);
    on<Init>(_onInit);
    add(const Init());
  }

  FutureOr<void> _onInit(
    Init event,
    Emitter<VerifyPasswordState> emit,
  ) async {
    final showBiometric = await enableBiometrics();
    final profile = await profileRepository.getLocalProfile();
    try {
      emit(state.copyWith(
        status: VerifyPasswordStatus.initial,
        showBiometric: showBiometric,
        name: profile?.firstName ?? 'تست',
        photoUrl: profile?.photoUrl ?? 'https://i.pravatar.cc/300',
      ));
    } catch (e) {
      emit(state.copyWith(
          status: VerifyPasswordStatus.failure, errorMessage: e.toString()));
    }
  }

  Future<bool> enableBiometrics() async {
    final savedPassword = await tokenRepository.getPassword();
    final canCheckBiometrics = await localAuthentication.canCheckBiometrics;
    final biometricEnable = !savedPassword.isNullOrEmpty && canCheckBiometrics;
    return biometricEnable;
  }

  Future<void> _onBiometricsSubmitted(
    BiometricsSubmitted event,
    Emitter<VerifyPasswordState> emit,
  ) async {
/*    emit(const VerifyPasswordInitial(showBiometric: true));
    try {
      bool isAuthenticated = await localAuthentication.authenticate();

      if (isAuthenticated) {
        String? password = await tokenRepository.getPassword();
        if (password.isNullOrEmpty) {
          emit(const VerifyPasswordFailure('Password is not exist'));
        } else {
          emit(PinExist(password!));
        }
      } else {
        emit(const VerifyPasswordFailure('Authentication failed'));
      }
    } catch (e) {
      emit(state.copyWith(
          status: VerifyPasswordStatus.failure, errorMessage: e.toString()));
    }*/
  }

  Future<void> _onVerifyPasswordSubmitted(
    VerifyPasswordSubmitted event,
    Emitter<VerifyPasswordState> emit,
  ) async {
    emit(state.copyWith(status: VerifyPasswordStatus.loading));
    try {
      final response =
          await authenticationRepository.postPassword(password: event.password);
      response.when(
        success: (response) {
          if (response is UserProfileEntity) {
            emit(
              state.copyWith(
                status: VerifyPasswordStatus.deepLinkLanding,
                deeplink: response.routingButtonEntity!.deeplink,
              ),
            );
          }
        },
        partialSuccess: (message) => emit(
          state.copyWith(
            status: VerifyPasswordStatus.failure,
            errorMessage: message,
          ),
        ),
        networkError: (exception) => emit(
          state.copyWith(
            status: VerifyPasswordStatus.failure,
            errorMessage: exception.toString(),
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: VerifyPasswordStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
