import 'package:banx/core/domain/repository/address_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'national_serial_event.dart';
part 'national_serial_state.dart';

@injectable
class NationalSerialBloc extends Bloc<NationalSerialEvent, NationalSerialState> {
  final AddressRepository addressRepository;

  NationalSerialBloc({
    required this.addressRepository,
  }) : super(NationalSerialValidated()) {
    on<CheckNationalSerialSubmitted>(_onCheckPostalCodeSubmitted);
  }

  Future<void> _onCheckPostalCodeSubmitted(
    CheckNationalSerialSubmitted event,
    Emitter<NationalSerialState> emit,
  ) async {
    emit(NationalSerialInProgress());
    try {
      final response =
          await addressRepository.getInquiry(postalCode: event.nationalSerial);
      response.when(
          success: (response) {
            emit(
              NationalSerialSuccess(address: response.address),
            );
          },
          partialSuccess: (message) => emit(NationalSerialFailure(message)),
          networkError: (exception) =>
              emit(NationalSerialFailure(exception.toString())));
    } catch (e) {
      emit(NationalSerialFailure(e.toString()));
    }
  }
}
