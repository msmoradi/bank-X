import 'package:banx/core/domain/entities/user_profile_entity.dart';
import 'package:banx/core/domain/repository/profile_repository.dart';
import 'package:banx/core/domain/repository/token_repository.dart';
import 'package:banx/feature/splash/presentation/bloc/splash_state.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'splash_event.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final TokenRepository tokenRepository;
  final ProfileRepository profileRepository;

  SplashBloc({
    required this.tokenRepository,
    required this.profileRepository,
  }) : super(const SplashState()) {
    on<Init>(_onInit);
  }

  Future<void> _onInit(
    Init event,
    Emitter<SplashState> emit,
  ) async {
    try {
      final UserProfileEntity? profile =
          await profileRepository.getLocalProfile();
      final String? refreshToken = await tokenRepository.getRefreshToken();
      final bool hasPassword = profile?.hasPassword ?? false;
      final bool hasRefresh = refreshToken?.isNotEmpty ?? false;
      final bool verifyPassword = hasPassword && hasRefresh;

      await Future.delayed(const Duration(milliseconds: 300));

      if (verifyPassword) {
        emit(state.copyWith(status: SplashStatus.verifyPassword));
      } else {
        emit(state.copyWith(status: SplashStatus.phone));
      }
    } catch (e) {
      emit(
        state.copyWith(
          status: SplashStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
