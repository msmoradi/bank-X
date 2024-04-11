part of 'transaction_checkout_bloc.dart';

abstract class TransactionCheckoutEvent extends Equatable {
  const TransactionCheckoutEvent();

  @override
  List<Object> get props => [];
}

class Init extends TransactionCheckoutEvent {
  final DepositType sourceDepositType;
  final UserInfo sourceUserInfo;
  final DepositType destinationDepositType;
  final UserInfo destinationUserInfo;

  const Init(
      {required this.sourceDepositType,
      required this.sourceUserInfo,
      required this.destinationDepositType,
      required this.destinationUserInfo});

  @override
  List<Object> get props => [];
}

class SourceSelectTypeEvent extends TransactionCheckoutEvent {
  final DepositType type;

  const SourceSelectTypeEvent(this.type);
}

class DestinationSelectTypeEvent extends TransactionCheckoutEvent {
  final DepositType type;

  const DestinationSelectTypeEvent(this.type);
}
