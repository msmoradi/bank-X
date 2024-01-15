import 'package:banx/core/domain/entities/entity.dart';
import 'package:banx/core/domain/entities/user_profile_entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';
import 'package:banx/core/domain/repository/authentication_repository.dart';
import 'package:banx/feature/verify_otp/presentation/bloc/verify_otp_state.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'verify_otp_event.dart';

@injectable
class VerifyOtpBloc extends Bloc<VerifyOtpEvent, VerifyOtpState> {
  final AuthenticationRepository authenticationRepository;

  VerifyOtpBloc({
    required this.authenticationRepository,
  }) : super(const VerifyOtpState()) {
    on<VerifyOtpSubmitted>(_onVerifyOtpSubmitted);
    on<ResendCode>(_onResendCode);
  }

  Future<void> _onResendCode(
    ResendCode event,
    Emitter<VerifyOtpState> emit,
  ) async {
    try {
      final response = await authenticationRepository.sendOtp(
        phoneNumber: event.phoneNumber,
      );
      response.when(
        success: (success) =>
            emit(state.copyWith(status: VerifyOtpStatus.initial)),
        partialSuccess: (message) => emit(
          state.copyWith(
            status: VerifyOtpStatus.failure,
            errorMessage: message,
          ),
        ),
        networkError: (exception) => emit(
          state.copyWith(
            status: VerifyOtpStatus.failure,
            errorMessage: exception.toString(),
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: VerifyOtpStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _onVerifyOtpSubmitted(
    VerifyOtpSubmitted event,
    Emitter<VerifyOtpState> emit,
  ) async {
    if (event.otp.length != event.codeLength) {
      emit(state.copyWith(
          status: VerifyOtpStatus.otpError,
          otpErrorMessage: 'کد پیامک شده را وارد نمایید'));
    } else {
      emit(
        state.copyWith(
          status: VerifyOtpStatus.loading,
        ),
      );
      try {
        final EntityWrapper<Entity> response =
            await authenticationRepository.verifyOtp(
          phoneNumber: event.phoneNumber,
          otp: event.otp,
        );
        response.when(
          success: (entity) {
            if (entity is UserProfileEntity) {
              emit(
                state.copyWith(
                    status: VerifyOtpStatus.deepLinkLanding,
                    deeplink: entity.routingButtonEntity!.deeplink),
              );
            }
          },
          partialSuccess: (message) => emit(
            state.copyWith(
              status: VerifyOtpStatus.failure,
              errorMessage: message,
            ),
          ),
          networkError: (exception) => emit(
            state.copyWith(
              status: VerifyOtpStatus.failure,
              errorMessage: exception.toString(),
            ),
          ),
        );
      } catch (e) {
        emit(
          state.copyWith(
            status: VerifyOtpStatus.failure,
            errorMessage: e.toString(),
          ),
        );
      }
    }
  }
}
