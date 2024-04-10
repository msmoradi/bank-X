part of 'transaction_destination_bloc.dart';

abstract class TransactionDestinationEvent extends Equatable {
  const TransactionDestinationEvent();

  @override
  List<Object> get props => [];
}

class Init extends TransactionDestinationEvent {
  const Init();

  @override
  List<Object> get props => [];
}
