part of 'profile_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class ExitClick extends HomeEvent {}

class NFCSwitchChange extends HomeEvent {}

class Init extends HomeEvent {}
