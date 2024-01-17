part of 'confirm_password_bloc.dart';

@immutable
abstract class ConfirmPasswordState extends Equatable {
  const ConfirmPasswordState();
}

class ConfirmPasswordFailure extends ConfirmPasswordState {
  final String message;

  const ConfirmPasswordFailure(this.message);

  @override
  List<Object?> get props => [];
}

class ConfirmPasswordInProgress extends ConfirmPasswordState {
  @override
  List<Object?> get props => [];
}

class BiometricLanding extends ConfirmPasswordState {
  final String deeplink;

  const BiometricLanding({required this.deeplink});

  @override
  List<Object?> get props => [deeplink];
}

class ConfirmPasswordValidated extends ConfirmPasswordState {
  @override
  List<Object?> get props => [];
}
