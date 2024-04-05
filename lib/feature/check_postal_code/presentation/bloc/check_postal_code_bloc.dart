import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/core/domain/repository/address_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'check_postal_code_event.dart';

part 'check_postal_code_state.dart';

@injectable
class CheckPostalCodeBloc
    extends Bloc<CheckPostalCodeEvent, CheckPostalCodeState> {
  final AddressRepository addressRepository;

  CheckPostalCodeBloc({
    required this.addressRepository,
  }) : super(CheckPostalCodeValidated()) {
    on<CheckPostalCodeSubmitted>(_onCheckPostalCodeSubmitted);
  }

  Future<void> _onCheckPostalCodeSubmitted(
    CheckPostalCodeSubmitted event,
    Emitter<CheckPostalCodeState> emit,
  ) async {
    emit(CheckPostalCodeInProgress());
    try {
      final response =
          await addressRepository.getInquiry(postalCode: event.postalCode);
      response.when(
          success: (entity) => emit(
                AddAddress(address: entity),
              ),
          partialSuccess: (message) => emit(CheckPostalCodeFailure(message)),
          networkError: (exception) =>
              emit(CheckPostalCodeFailure(exception.toString())));
    } catch (e) {
      emit(CheckPostalCodeFailure(e.toString()));
    }
  }
}
