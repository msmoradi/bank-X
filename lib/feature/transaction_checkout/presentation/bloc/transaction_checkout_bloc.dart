import 'dart:async';

import 'package:banx/core/designsystem/widgets/components/drop_down_chip_widget.dart';
import 'package:banx/core/domain/entities/transaction_time.dart';
import 'package:banx/feature/transaction_checkout/presentation/bloc/transaction_checkout_state.dart';
import 'package:banx/feature/transaction_destination/presentation/view/transaction_destination_content.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'transaction_checkout_event.dart';

@injectable
class TransactionCheckoutBloc
    extends Bloc<TransactionCheckoutEvent, TransactionCheckoutState> {
  TransactionCheckoutBloc() : super(const TransactionCheckoutState()) {
    on<DestinationSelectTypeEvent>(_onDestinationSelectTypeEvent);
    on<SourceSelectTypeEvent>(_onSourceSelectTypeEvent);
    on<Init>(_onInit);
  }

  void _onInit(Init event, Emitter<TransactionCheckoutState> emit) {

    emit(state.copyWith(
        destinationDepositType: event.destinationDepositType,
        sourceDepositType: event.sourceDepositType,
        destinationUserInfo: event.destinationUserInfo,
        sourceUserInfo: event.sourceUserInfo));
  }

  void _onDestinationSelectTypeEvent(DestinationSelectTypeEvent event,
      Emitter<TransactionCheckoutState> emit) {
    emit(state.copyWith(destinationDepositType: event.type));
  }

  void _onSourceSelectTypeEvent(
      SourceSelectTypeEvent event, Emitter<TransactionCheckoutState> emit) {
    emit(state.copyWith(sourceDepositType: event.type));
  }
}
