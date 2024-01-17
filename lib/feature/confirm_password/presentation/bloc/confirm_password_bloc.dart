import 'package:banx/core/domain/entities/user_profile_entity.dart';
import 'package:banx/core/domain/repository/authentication_repository.dart';
import 'package:banx/core/domain/repository/profile_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'confirm_password_event.dart';
part 'confirm_password_state.dart';

@injectable
class ConfirmPasswordBloc
    extends Bloc<ConfirmPasswordEvent, ConfirmPasswordState> {
  final AuthenticationRepository authenticationRepository;
  final ProfileRepository profileRepository;

  ConfirmPasswordBloc({
    required this.authenticationRepository,
    required this.profileRepository,
  }) : super(ConfirmPasswordValidated()) {
    on<ConfirmPasswordSubmitted>(_onConfirmPasswordSubmitted);
  }

  Future<void> _onConfirmPasswordSubmitted(
    ConfirmPasswordSubmitted event,
    Emitter<ConfirmPasswordState> emit,
  ) async {
    emit(ConfirmPasswordInProgress());
    try {
      final response =
          await authenticationRepository.putPassword(password: event.password);
      response.when(
          success: (entity) {
            if (entity is UserProfileEntity) {
              emit(
                BiometricLanding(deeplink: entity.routingButtonEntity!.deeplink),
              );
            }
          },
          partialSuccess: (message) => emit(ConfirmPasswordFailure(message)),
          networkError: (exception) =>
              emit(ConfirmPasswordFailure(exception.toString())));
    } catch (e) {
      emit(ConfirmPasswordFailure(e.toString()));
    }
  }
}
