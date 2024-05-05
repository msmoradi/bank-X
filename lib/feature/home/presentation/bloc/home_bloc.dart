import 'dart:async';

import 'package:banx/core/domain/entities/user_profile_entity.dart';
import 'package:banx/core/domain/repository/profile_repository.dart';
import 'package:banx/feature/home/presentation/bloc/home_state.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:flutter_nfc_kit/flutter_nfc_kit.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ProfileRepository profileRepository;

  HomeBloc({
    required this.profileRepository,
  }) : super(const HomeState(isLoading: true)) {
    on<Init>(_onInit);
    on<NFCTagRead>(_onNFCTagRead);
    add(Init());
  }

  Future<void> _onInit(Init event, Emitter<HomeState> emit) async {
    final UserProfileEntity? profile =
        await profileRepository.getLocalProfile();

    if (profile == null) return;

    NFCAvailability availability;
    try {
      availability = await FlutterNfcKit.nfcAvailability;
    } on PlatformException {
      availability = NFCAvailability.not_supported;
    }

    final bool nfcActive = profile.nfcActive ?? false;

    emit(state.copyWith(
        needNfc: nfcActive && availability != NFCAvailability.not_supported,
        isLoading: false));
  }

  Future<void> _onNFCTagRead(NFCTagRead event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));

    await Future.delayed(const Duration(seconds: 2));

    emit(state.copyWith(needNfc: false, isLoading: false));
  }
}
