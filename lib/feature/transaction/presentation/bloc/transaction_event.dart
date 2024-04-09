part of 'transaction_bloc.dart';

abstract class TransactionEvent extends Equatable {
  const TransactionEvent();

  @override
  List<Object> get props => [];
}

class SelectTypeEvent extends TransactionEvent {
  final DepositType selectedType;

  SelectTypeEvent(this.selectedType);
}

class AddValueEvent extends TransactionEvent {
  final String key;

  const AddValueEvent({
    required this.key,
  });
}

class RemoveValueEvent extends TransactionEvent {
  const RemoveValueEvent();

  @override
  List<Object> get props => [];
}

class Init extends TransactionEvent {
  const Init();

  @override
  List<Object> get props => [];
}
