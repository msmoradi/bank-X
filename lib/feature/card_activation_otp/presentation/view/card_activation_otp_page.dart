import 'package:banx/feature/card_activation_otp/presentation/bloc/card_activation_otp_bloc.dart';
import 'package:banx/feature/card_activation_otp/presentation/view/card_activation_otp_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class CardActivationOtpPage extends StatelessWidget {
  final Function() onBackPressed;
  final Function() onMainPage;
  final Function(String) showMessage;
  final String phoneNumber;
  final int codeLength;
  final int expiresIn;

  const CardActivationOtpPage({
    super.key,
    required this.onBackPressed,
    required this.onMainPage,
    required this.phoneNumber,
    required this.codeLength,
    required this.expiresIn,
    required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<CardActivationOtpBloc>(),
      child: BlocConsumer<CardActivationOtpBloc, CardActivationOtpState>(
        listener: (context, state) {
          switch (state) {
            case final CardActivationOtpFailure s:
              {
                showMessage(s.message);
              }
            case final MainPage _:
              {
                onMainPage();
              }
          }
        },
        builder: (context, state) {
          return CardActivationOtpContent(
            state: state,
            phoneNumber: phoneNumber,
            codeLength: codeLength,
            expiresIn: expiresIn,
            errorMessage: state is OtpError ? state.message : null,
          );
        },
      ),
    );
  }
}
