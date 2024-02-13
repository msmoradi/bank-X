import 'package:banx/feature/identity_correction/presentation/bloc/identity_correction_bloc.dart';
import 'package:banx/feature/identity_correction/presentation/view/identity_correction_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class IdentityCorrectionPage extends StatelessWidget {
  final String phoneNumber;
  final Function(int, int) onVerifyOtp;
  final Function(String) showMessage;

  const IdentityCorrectionPage({
    super.key,
    required this.onVerifyOtp,
    required this.phoneNumber,
    required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<IdentityCorrectionBloc>(),
      child: BlocConsumer<IdentityCorrectionBloc, IdentityCorrectionState>(
        listener: (context, state) {
          if (state is IdentityCorrectionFailure) {
            showMessage(state.message);
          } else if (state is IdentityCorrectionSuccess) {
            onVerifyOtp(
              state.signUpEntity.expiresIn,
              state.signUpEntity.codeLength,
            );
          }
        },
        builder: (context, state) {
          return IdentityCorrectionContent(
            state: state,
            phoneNumber: phoneNumber,
          );
        },
      ),
    );
  }
}
