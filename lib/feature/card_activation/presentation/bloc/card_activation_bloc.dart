import 'package:banx/core/domain/repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'card_activation_event.dart';

part 'card_activation_state.dart';

@injectable
class CardActivationBloc
    extends Bloc<CardActivationEvent, CardActivationState> {
  final AuthenticationRepository authenticationRepository;

  CardActivationBloc({
    required this.authenticationRepository,
  }) : super(CardActivationValidated()) {
    on<CardActivationSubmitted>(_onCardActivationSubmitted);
  }

  Future<void> _onCardActivationSubmitted(
    CardActivationSubmitted event,
    Emitter<CardActivationState> emit,
  ) async {
    emit(CardActivationInProgress());
    try {
      final response = await authenticationRepository.sendOtp(
          phoneNumber: event.cardActivationNumber);
      response.when(
          success: (response) {
            emit(
              VerifyOtpSuccess(
                  cardActivationNumber: event.cardActivationNumber,
                  expiresIn: response.expiresIn!,
                  codeLength: response.codeLength!),
            );
          },
          partialSuccess: (message) => emit(CardActivationFailure(message)),
          networkError: (exception) =>
              emit(CardActivationFailure(exception.toString())));
    } catch (e) {
      emit(CardActivationFailure(e.toString()));
    }
  }
}
