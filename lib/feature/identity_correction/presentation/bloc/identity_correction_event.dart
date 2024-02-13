part of 'identity_correction_bloc.dart';

abstract class IdentityCorrectionEvent extends Equatable {
  const IdentityCorrectionEvent();

  @override
  List<Object> get props => [];
}

class IdentityCorrectionSubmitted extends IdentityCorrectionEvent {
  final String birthDate;

  const IdentityCorrectionSubmitted({
    required this.birthDate,
  });

  @override
  List<Object> get props => [birthDate];
}
