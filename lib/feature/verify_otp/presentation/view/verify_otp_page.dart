import 'package:banx/feature/verify_otp/presentation/bloc/verify_otp_bloc.dart';
import 'package:banx/feature/verify_otp/presentation/bloc/verify_otp_state.dart';
import 'package:banx/feature/verify_otp/presentation/view/verify_otp_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class VerifyOtpPage extends StatelessWidget {
  final Function() onBackPressed;
  final Function() onMainPage;
  final Function(String) onDeeplinkLanding;
  final Function(String) verifyPassword;
  final Function(String) showMessage;
  final String phoneNumber;
  final int codeLength;
  final int expiresIn;

  const VerifyOtpPage({
    super.key,
    required this.onBackPressed,
    required this.onMainPage,
    required this.phoneNumber,
    required this.codeLength,
    required this.expiresIn,
    required this.onDeeplinkLanding,
    required this.verifyPassword,
    required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<VerifyOtpBloc>(),
      child: BlocConsumer<VerifyOtpBloc, VerifyOtpState>(
        listener: (context, state) {
          if (state.status == VerifyOtpStatus.failure) {
            showMessage(state.errorMessage);
          } else if (state.status == VerifyOtpStatus.deepLinkLanding) {
            onDeeplinkLanding(state.deeplink);
          }
        },
        builder: (context, state) {
          return VerifyOtpContent(
            showLoading: state.status == VerifyOtpStatus.loading,
            phoneNumber: phoneNumber,
            codeLength: codeLength,
            expiresIn: expiresIn,
            errorMessage: state.status == VerifyOtpStatus.otpError
                ? state.otpErrorMessage
                : null,
          );
        },
      ),
    );
  }
}
