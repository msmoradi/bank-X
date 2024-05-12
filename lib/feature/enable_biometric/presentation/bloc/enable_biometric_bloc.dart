import 'package:banx/core/domain/repository/profile_repository.dart';
import 'package:banx/core/domain/repository/token_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';

part 'enable_biometric_event.dart';

part 'enable_biometric_state.dart';

@injectable
class EnableBiometricBloc
    extends Bloc<EnableBiometricEvent, EnableBiometricState> {
  final ProfileRepository profileRepository;
  final LocalAuthentication localAuthentication;
  final TokenRepository tokenRepository;

  EnableBiometricBloc({
    required this.profileRepository,
    required this.localAuthentication,
    required this.tokenRepository,
  }) : super(EnableBiometricValidated()) {
    on<EnableBiometricSubmitted>(_onEnableBiometricSubmitted);
  }

  Future<void> _onEnableBiometricSubmitted(
    EnableBiometricSubmitted event,
    Emitter<EnableBiometricState> emit,
  ) async {
    try {
      if (event.authNeeded) {
        bool isAuthenticated = await localAuthentication.authenticate(
          localizedReason: 'Please authenticate to access your password',
          options: const AuthenticationOptions(
            biometricOnly: true,
          ),
        );

        if (isAuthenticated) {
          await tokenRepository.savePassword(event.password);
        }
      }

      emit(DeepLinkLanding(deeplink: event.deeplink));
    } catch (e) {
      emit(EnableBiometricFailure(e.toString()));
    }
  }
}
