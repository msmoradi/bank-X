part of 'identity_correction_bloc.dart';

@immutable
abstract class  IdentityCorrectionState extends Equatable {
  const  IdentityCorrectionState();
}

class  IdentityCorrectionFailure extends  IdentityCorrectionState {
  final String message;

  const  IdentityCorrectionFailure(this.message);

  @override
  List<Object?> get props => [];
}

class  IdentityCorrectionInProgress extends  IdentityCorrectionState {
  @override
  List<Object?> get props => [];
}

class  IdentityCorrectionSuccess extends  IdentityCorrectionState {
  final SignUpEntity signUpEntity;

  const  IdentityCorrectionSuccess({required this.signUpEntity});

  @override
  List<Object?> get props => [];
}

class  IdentityCorrectionValidated extends  IdentityCorrectionState {
  @override
  List<Object?> get props => [];
}
