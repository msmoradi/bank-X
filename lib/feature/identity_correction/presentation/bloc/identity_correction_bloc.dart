import 'package:banx/core/domain/entities/sign_up_entity.dart';
import 'package:banx/core/domain/repository/authentication_repository.dart';
import 'package:banx/feature/identity_correction/presentation/bloc/identity_correction_bloc.dart';
import 'package:banx/feature/identity_correction/presentation/bloc/identity_correction_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'identity_correction_event.dart';

part 'identity_correction_state.dart';

@injectable
class IdentityCorrectionBloc
    extends Bloc<IdentityCorrectionEvent, IdentityCorrectionState> {
  final AuthenticationRepository authenticationRepository;

  IdentityCorrectionBloc({required this.authenticationRepository})
      : super(IdentityCorrectionValidated()) {
    on<IdentityCorrectionSubmitted>(_onIdentityCorrectionSubmitted);
  }

  Future<void> _onIdentityCorrectionSubmitted(
    IdentityCorrectionSubmitted event,
    Emitter<IdentityCorrectionState> emit,
  ) async {
    emit(IdentityCorrectionInProgress());
    try {
      final response = await authenticationRepository.identityCorrection(
        birthDate: event.birthDate,
      );

      response.when(
          success: (responseEntity) =>
              emit(IdentityCorrectionSuccess(signUpEntity: responseEntity)),
          partialSuccess: (message) => emit(IdentityCorrectionFailure(message)),
          networkError: (exception) =>
              emit(IdentityCorrectionFailure(exception.toString())));
    } catch (e) {
      emit(IdentityCorrectionFailure(e.toString()));
    }
  }
}
