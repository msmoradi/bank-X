part of 'main_bloc.dart';

@immutable
abstract class MainState extends Equatable {
  const MainState();
}

class MainSuccess extends MainState {
  const MainSuccess();

  @override
  List<Object?> get props => [];
}
