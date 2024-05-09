import 'dart:async';

import 'package:banx/core/domain/entities/user_profile_entity.dart';
import 'package:banx/core/domain/repository/profile_repository.dart';
import 'package:banx/core/domain/repository/token_repository.dart';
import 'package:banx/feature/profile/presentation/bloc/profile_state.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';

@injectable
class ProfileBloc extends Bloc<HomeEvent, ProfileState> {
  final ProfileRepository profileRepository;
  final TokenRepository tokenRepository;

  ProfileBloc({
    required this.profileRepository,
    required this.tokenRepository,
  }) : super(const ProfileState(showLoading: true)) {
    on<ExitClick>(_onExitClick);
    on<NFCSwitchChange>(_onNFCSwitchChange);
    on<Init>(_onInit);
    add(Init());
  }

  Future<void> _onNFCSwitchChange(
      NFCSwitchChange event, Emitter<ProfileState> emit) async {
    final newState = !state.nfcActive;
    await profileRepository.nfcActive(newState);
    emit(state.copyWith(nfcActive: newState));
    return;
  }

  Future<void> _onExitClick(ExitClick event, Emitter<ProfileState> emit) async {
    await tokenRepository.clearTokens();
    emit(state.copyWith(status: ProfileStatus.logOut));
  }

  Future<void> _onInit(Init event, Emitter<ProfileState> emit) async {
    final UserProfileEntity? profile =
        await profileRepository.getLocalProfile();

    if (profile == null) return;

    final String? photoUrl = profile.photoUrl;
    final String? firstName = profile.firstName;
    final String? lastName = profile.lastName;
    final String? username = profile.username;
    final bool? nfcActive = profile.nfcActive;

    if (photoUrl?.isNotEmpty == true) {
      emit(state.copyWith(userName: photoUrl!));
    }

    if (firstName?.isNotEmpty == true && lastName?.isNotEmpty == true) {
      emit(state.copyWith(fullName: '$firstName $lastName'));
    }

    if (username?.isNotEmpty == true) {
      emit(state.copyWith(userName: username!));
    }

    if (nfcActive != null) {
      emit(state.copyWith(nfcActive: nfcActive));
    }

    emit(state.copyWith(showLoading: false));
  }
}
