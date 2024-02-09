part of 'kyc_status_bloc.dart';

abstract class KycStatusEvent extends Equatable {
  const KycStatusEvent();

  @override
  List<Object> get props => [];
}

class ActionClicked extends KycStatusEvent {
  const ActionClicked();

  @override
  List<Object> get props => [];
}

class Init extends KycStatusEvent {
  @override
  List<Object> get props => [];
}
