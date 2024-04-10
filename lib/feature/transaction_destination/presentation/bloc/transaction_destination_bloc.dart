
import 'package:banx/feature/transaction_destination/presentation/bloc/transaction_destination_state.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'transaction_destination_event.dart';

@injectable
class TransactionDestinationBloc extends Bloc<TransactionDestinationEvent, TransactionDestinationState> {
  TransactionDestinationBloc()
      : super(const TransactionDestinationState(status: TransactionDestinationStatus.loading)) {
  }
}
