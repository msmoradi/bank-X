part of 'confirm_password_bloc.dart';

abstract class ConfirmPasswordEvent extends Equatable {
  const ConfirmPasswordEvent();

  @override
  List<Object> get props => [];
}

class ConfirmPasswordSubmitted extends ConfirmPasswordEvent {
  final String password;

  const ConfirmPasswordSubmitted({
    required this.password,
  });

  @override
  List<Object> get props => [];
}
