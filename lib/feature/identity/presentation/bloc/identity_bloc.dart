import 'package:banx/core/domain/entities/sign_up_entity.dart';
import 'package:banx/core/domain/repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'identity_event.dart';
part 'identity_state.dart';

@injectable
class IdentityBloc extends Bloc<IdentityEvent, IdentityState> {
  final AuthenticationRepository authenticationRepository;

  IdentityBloc({required this.authenticationRepository})
      : super(IdentityValidated()) {
    on<IdentitySubmitted>(_onIdentitySubmitted);
  }

  Future<void> _onIdentitySubmitted(
    IdentitySubmitted event,
    Emitter<IdentityState> emit,
  ) async {
    emit(IdentityInProgress());
    try {
      final response = await authenticationRepository.signup(
        phoneNumber: event.phoneNumber,
        nationalId: event.nationalId,
        birthDate: event.birthDate,
        referralCode: event.referral,
      );

      response.when(
          success: (responseEntity) =>
              emit(IdentitySuccess(signUpEntity: responseEntity)),
          partialSuccess: (message) => emit(IdentityFailure(message)),
          networkError: (exception) =>
              emit(IdentityFailure(exception.toString())));
    } catch (e) {
      emit(IdentityFailure(e.toString()));
    }
  }
}
