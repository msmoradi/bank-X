part of 'enable_biometric_bloc.dart';

@immutable
abstract class EnableBiometricState extends Equatable {
  const EnableBiometricState();
}

class EnableBiometricFailure extends EnableBiometricState {
  final String message;

  const EnableBiometricFailure(this.message);

  @override
  List<Object?> get props => [];
}

class EnableBiometricInProgress extends EnableBiometricState {
  @override
  List<Object?> get props => [];
}

class DeepLinkLanding extends EnableBiometricState {
  final String deeplink;

  const DeepLinkLanding({required this.deeplink});

  @override
  List<Object?> get props => [deeplink];
}

class EnableBiometricValidated extends EnableBiometricState {
  @override
  List<Object?> get props => [];
}
