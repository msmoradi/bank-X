part of 'bank_bloc.dart';

abstract class BankEvent extends Equatable {
  const BankEvent();

  @override
  List<Object> get props => [];
}


class BankXClick extends BankEvent {}
class Init extends BankEvent {}
