import 'package:banx/feature/card_activation/presentation/view/card_activation_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../bloc/card_activation_bloc.dart';

class CardActivationPage extends StatelessWidget {
  final Function(String, int, int) onVerifyOtp;
  final Function(String) showMessage;

  const CardActivationPage({
    super.key,
    required this.onVerifyOtp,
    required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<CardActivationBloc>(),
      child: BlocConsumer<CardActivationBloc, CardActivationState>(
        listener: (context, state) {
          if (state is CardActivationFailure) {
            showMessage(state.message);
          } else if (state is VerifyOtpSuccess) {
            onVerifyOtp(
              state.cardActivationNumber,
              state.expiresIn,
              state.codeLength,
            );
          }
        },
        builder: (context, state) {
          return CardActivationContent(state: state);
        },
      ),
    );
  }
}
