part of 'assist_bloc.dart';

@immutable
abstract class AssistState extends Equatable {
  const AssistState();
}

class AssistSuccess extends AssistState {
  const AssistSuccess();

  @override
  List<Object?> get props => [];
}
