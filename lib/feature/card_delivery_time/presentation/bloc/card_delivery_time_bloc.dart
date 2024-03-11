import 'dart:async';

import 'package:banx/core/domain/entities/user_profile_entity.dart';
import 'package:banx/core/domain/repository/card_repository.dart';
import 'package:banx/feature/card_delivery_time/presentation/bloc/card_delivery_time_state.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'card_delivery_time_event.dart';

@injectable
class CardDeliveryTimeBloc
    extends Bloc<CardDeliveryTimeEvent, CardDeliveryTimeState> {
  final CardRepository cardRepository;

  CardDeliveryTimeBloc({
    required this.cardRepository,
  }) : super(const CardDeliveryTimeState()) {
    on<CardDeliveryTimeSubmitted>(_onCardDeliveryTimeSubmitted);
  }

  Future<void> _onCardDeliveryTimeSubmitted(
    CardDeliveryTimeSubmitted event,
    Emitter<CardDeliveryTimeState> emit,
  ) async {
    emit(state.copyWith(status: CardDeliveryTimeStatus.loading));
    try {
      final response = await cardRepository.orders(
        addressId: event.addressId,
        typeId: event.typeId,
        cardShippingTimeSlotId: event.cardShippingTimeSlotId,
      );
      response.when(
          success: (entity) {
            if (entity is UserProfileEntity) {
              emit(
                state.copyWith(
                    status: CardDeliveryTimeStatus.deepLinkLanding,
                    deeplink: entity.routingButtonEntity!.deeplink),
              );
            }
          },
          partialSuccess: (message) => emit(
                state.copyWith(
                    status: CardDeliveryTimeStatus.failure,
                    errorMessage: message),
              ),
          networkError: (exception) => emit(
                state.copyWith(
                    status: CardDeliveryTimeStatus.failure,
                    errorMessage: exception.toString()),
              ));
    } catch (e) {
      emit(
        state.copyWith(
            status: CardDeliveryTimeStatus.failure, errorMessage: e.toString()),
      );
    }
  }
}
