import 'package:banx/core/domain/repository/authentication_repository.dart';
import 'package:banx/feature/phone/presentation/bloc/phone_state.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'phone_event.dart';

@injectable
class PhoneBloc extends Bloc<PhoneEvent, PhoneState> {
  final AuthenticationRepository authenticationRepository;

  PhoneBloc({
    required this.authenticationRepository,
  }) : super(const PhoneState()) {
    on<PhoneSubmitted>(_onPhoneSubmitted);
  }

  Future<void> _onPhoneSubmitted(
    PhoneSubmitted event,
    Emitter<PhoneState> emit,
  ) async {
    emit(state.copyWith(status: PhoneStatus.loading));
    try {
      final response = await authenticationRepository.sendOtp(
          phoneNumber: event.phoneNumber);
      response.when(
          success: (response) {
            if (response.needSignup) {
              emit(state.copyWith(
                status: PhoneStatus.identity,
                phoneNumber: event.phoneNumber,
                needReferralCode: response.needReferralCode ?? false,
              ));
            } else {
              emit(
                state.copyWith(
                    status: PhoneStatus.verifyOtp,
                    phoneNumber: event.phoneNumber,
                    expiresIn: response.expiresIn!,
                    codeLength: response.codeLength!),
              );
            }
          },
          partialSuccess: (message) => emit(
                state.copyWith(
                  status: PhoneStatus.failure,
                  errorMessage: message,
                ),
              ),
          networkError: (exception) => emit(
                state.copyWith(
                  status: PhoneStatus.failure,
                  errorMessage: exception.toString(),
                ),
              ));
    } catch (e) {
      emit(
        state.copyWith(
          status: PhoneStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
