import 'dart:async';

import 'package:banx/core/data/mock.dart';
import 'package:banx/feature/bank/presentation/bloc/bank_state.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'bank_event.dart';

@injectable
class BankBloc extends Bloc<BankEvent, BankState> {
  BankBloc()
      : super(const BankState(
          status: BankStatus.loading,
          bankCardStatus: BankCardStatus.ordered,
          errorMessage: '',
        )) {
    on<BankXClick>(_onBankXClick);
    on<Init>(_onInit);
    add(Init());
  }

  Future<void> _onInit(Init event, Emitter<BankState> emit) async {
    await Future.delayed(const Duration(seconds: 1));
    final mockList = MockData.transactions;
    mockList.shuffle();
    emit(state.copyWith(
      transactions: mockList,
      status: BankStatus.initial,
    ));
  }

  Future<void> _onBankXClick(BankXClick event, Emitter<BankState> emit) async {
    try {
      /*if (state.bankCardStatus == BankCardStatus.delivered) {
        emit(state.copyWith(status: BankStatus.cardActivation));
        return;
      }*/
      await Future.delayed(const Duration(milliseconds: 200));
      if (state.bankCardStatus == BankCardStatus.ordered) {
        emit(state.copyWith(
            status: BankStatus.initial, bankCardStatus: BankCardStatus.issued));
      } else if (state.bankCardStatus == BankCardStatus.issued) {
        emit(state.copyWith(
            status: BankStatus.initial,
            bankCardStatus: BankCardStatus.delivered));
      } else if (state.bankCardStatus == BankCardStatus.delivered) {
        emit(state.copyWith(
            status: BankStatus.initial,
            bankCardStatus: BankCardStatus.activated));
      }
    } catch (e) {
      emit(
        state.copyWith(
          status: BankStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
