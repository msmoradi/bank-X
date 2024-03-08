import 'package:banx/core/domain/entities/entity.dart';
import 'package:banx/core/domain/entities/user_profile_entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';
import 'package:banx/core/domain/repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'card_activation_otp_event.dart';

part 'card_activation_otp_state.dart';

@injectable
class CardActivationOtpBloc
    extends Bloc<CardActivationOtpEvent, CardActivationOtpState> {
  final AuthenticationRepository authenticationRepository;

  CardActivationOtpBloc({
    required this.authenticationRepository,
  }) : super(CardActivationOtpValidated()) {
    on<CardActivationOtpSubmitted>(_onCardActivationOtpSubmitted);
    on<ResendCode>(_onResendCode);
  }

  Future<void> _onResendCode(
    ResendCode event,
    Emitter<CardActivationOtpState> emit,
  ) async {
    try {
      final response = await authenticationRepository.sendOtp(
        phoneNumber: event.phoneNumber,
      );
      response.when(
          success: (success) => emit(CardActivationOtpValidated()),
          partialSuccess: (message) => emit(CardActivationOtpFailure(message)),
          networkError: (exception) =>
              emit(CardActivationOtpFailure(exception.toString())));
    } catch (e) {
      emit(CardActivationOtpFailure(e.toString()));
    }
  }

  Future<void> _onCardActivationOtpSubmitted(
    CardActivationOtpSubmitted event,
    Emitter<CardActivationOtpState> emit,
  ) async {
    if (event.otp.length != event.codeLength) {
      emit(const OtpError('کد پیامک شده را وارد نمایید'));
    } else {
      emit(CardActivationOtpInProgress());
      try {
        final EntityWrapper<Entity> response =
            await authenticationRepository.verifyOtp(
          phoneNumber: event.phoneNumber,
          otp: event.otp,
        );
        response.when(
            success: (entity) {
              if (entity is UserProfileEntity) {
                //
              }
            },
            partialSuccess: (message) =>
                emit(CardActivationOtpFailure(message)),
            networkError: (exception) =>
                emit(CardActivationOtpFailure(exception.toString())));
      } catch (e) {
        emit(CardActivationOtpFailure(e.toString()));
      }
    }
  }
}
