import 'package:banx/feature/confirm_password/presentation/bloc/confirm_password_bloc.dart';
import 'package:banx/feature/confirm_password/presentation/view/confirm_password_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ConfirmPasswordPage extends StatelessWidget {
  final Function(String) biometricLanding;
  final Function(String) showMessage;
  final String newPassword;

  const ConfirmPasswordPage({
    super.key,
    required this.biometricLanding,
    required this.newPassword,
    required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<ConfirmPasswordBloc>(),
      child: BlocConsumer<ConfirmPasswordBloc, ConfirmPasswordState>(
        listener: (context, state) {
          _handleStateChange(context, state);
        },
        builder: (context, state) {
          return ConfirmPasswordContent(
            state: state,
            newPassword: newPassword,
          );
        },
      ),
    );
  }

  void _handleStateChange(BuildContext context, ConfirmPasswordState state) {
    switch (state) {
      case final ConfirmPasswordFailure s:
        {
          showMessage(s.message);
        }
      case final BiometricLanding s:
        {
          biometricLanding(s.deeplink);
        }
    }
  }
}
