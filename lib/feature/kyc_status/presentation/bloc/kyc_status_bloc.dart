import 'package:banx/core/domain/repository/authentication_repository.dart';
import 'package:banx/feature/kyc_status/presentation/bloc/kyc_status_state.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'kyc_status_event.dart';

@injectable
class KycStatusBloc extends Bloc<KycStatusEvent, KycStatusState> {
  final AuthenticationRepository authenticationRepository;

  KycStatusBloc({required this.authenticationRepository})
      : super(const KycStatusState()) {
    on<ActionClicked>(_onActionClicked);
    on<Init>(_onInit);
    add(Init());
  }

  Future<void> _onActionClicked(
    ActionClicked event,
    Emitter<KycStatusState> emit,
  ) async {
    if (state.deeplink.isEmpty) {
      add(Init());
    } else {
      emit(state.copyWith(status: KycStatusStatus.deepLinkLanding));
    }
  }

  Future<void> _onInit(
    Init event,
    Emitter<KycStatusState> emit,
  ) async {
    try {
      emit(state.copyWith(status: KycStatusStatus.loading));
      final response = await authenticationRepository.kyc();

      response.when(
        success: (entity) {
          emit(
            state.copyWith(
                status: KycStatusStatus.initial,
                deeplink: entity.routingButton.deeplink,
                actionTitle: entity.routingButton.title,
                identity: entity.state.identity,
                phoneNumber: entity.state.phoneNumber,
                face: entity.state.face,
                sayah: entity.state.sayah),
          );
        },
        partialSuccess: (message) => emit(
          state.copyWith(
            status: KycStatusStatus.failure,
            errorMessage: message,
          ),
        ),
        networkError: (exception) => emit(
          state.copyWith(
            status: KycStatusStatus.failure,
            errorMessage: exception.toString(),
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: KycStatusStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
