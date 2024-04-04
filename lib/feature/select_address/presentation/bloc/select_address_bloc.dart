import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/core/domain/entities/shipping_time_entity.dart';
import 'package:banx/core/domain/repository/card_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'select_address_event.dart';

part 'select_address_state.dart';

@injectable
class SelectAddressBloc extends Bloc<SelectAddressEvent, SelectAddressState> {
  final CardRepository cardRepository;

  SelectAddressBloc({
    required this.cardRepository,
  }) : super(SelectAddressValidated()) {
    on<AddressSelected>(_onAddressSelected);
  }

  Future<void> _onAddressSelected(
    AddressSelected event,
    Emitter<SelectAddressState> emit,
  ) async {
    emit(SelectAddressInProgress());
    try {
      final response = await cardRepository.shippingTimeSlots();
      response.when(
          success: (entity) {
            emit(
              SelectAddressSuccess(
                  address: event.addressEntity,
                  cardShippingTimeSlots: entity.cardShippingTimeSlots),
            );
          },
          partialSuccess: (message) => emit(SelectAddressFailure(message)),
          networkError: (exception) =>
              emit(SelectAddressFailure(exception.toString())));
    } catch (e) {
      emit(SelectAddressFailure(e.toString()));
    }
  }
}
