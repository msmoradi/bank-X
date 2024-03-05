part of 'select_card_bloc.dart';

abstract class SelectCardEvent extends Equatable {
  const SelectCardEvent();

  @override
  List<Object> get props => [];
}

class Init extends SelectCardEvent {
  @override
  List<Object> get props => [];
}

class ActionClick extends SelectCardEvent {
  const ActionClick();

  @override
  List<Object> get props => [];
}
