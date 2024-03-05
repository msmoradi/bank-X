import 'dart:async';

import 'package:banx/core/domain/repository/address_repository.dart';
import 'package:banx/core/domain/repository/card_repository.dart';
import 'package:banx/feature/select_card/presentation/bloc/select_card_state.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'select_card_event.dart';

@injectable
class SelectCardBloc extends Bloc<SelectCardEvent, SelectCardState> {
  final CardRepository cardRepository;
  final AddressRepository addressRepository;

  SelectCardBloc(
      {required this.cardRepository, required this.addressRepository})
      : super(const SelectCardState()) {
    on<Init>(_onInit);
    on<ActionClick>(_onActionClick);
    add(Init());
  }

  FutureOr<void> _onActionClick(
    ActionClick event,
    Emitter<SelectCardState> emit,
  ) async {
    try {
      emit(state.copyWith(status: SelectCardStatus.buttonLoading));
      final response = await addressRepository.getAddress();
      response.when(
        success: (entity) {
          if (entity.content.isEmpty) {
            emit(
              state.copyWith(
                status: SelectCardStatus.checkPostalCode,
                cardTypeId: state.cardTypeId,
              ),
            );
          } else {
            emit(
              state.copyWith(
                status: SelectCardStatus.cardSelected,
                addressList: entity.content,
                cardTypeId: state.cardTypeId,
              ),
            );
          }
        },
        partialSuccess: (message) => emit(
          state.copyWith(
            status: SelectCardStatus.failure,
            errorMessage: message,
          ),
        ),
        networkError: (exception) => emit(
          state.copyWith(
            status: SelectCardStatus.failure,
            errorMessage: exception.toString(),
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: SelectCardStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _onInit(
    Init event,
    Emitter<SelectCardState> emit,
  ) async {
    try {
      emit(state.copyWith(status: SelectCardStatus.pageLoading));
      final responses = await cardRepository.types();
      responses.when(
        success: (entity) {
          final card = entity.cardTypes.first;
          emit(
            state.copyWith(
              status: SelectCardStatus.initial,
              title: card.title,
              cardTypeId: card.id,
              description: card.description,
              priceLabel: card.priceLabel,
            ),
          );
        },
        partialSuccess: (message) => emit(
          state.copyWith(
            status: SelectCardStatus.failure,
            errorMessage: message,
          ),
        ),
        networkError: (exception) => emit(
          state.copyWith(
            status: SelectCardStatus.failure,
            errorMessage: exception.toString(),
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: SelectCardStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
