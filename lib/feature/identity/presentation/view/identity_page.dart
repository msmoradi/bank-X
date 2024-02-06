import 'package:banx/feature/identity/presentation/bloc/identity_bloc.dart';
import 'package:banx/feature/identity/presentation/view/identity_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class IdentityPage extends StatelessWidget {
  final bool needReferralCode;
  final String phoneNumber;
  final Function(int, int) onVerifyOtp;
  final Function(String) showMessage;

  const IdentityPage({
    super.key,
    required this.onVerifyOtp,
    required this.needReferralCode,
    required this.phoneNumber, required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<IdentityBloc>(),
      child: BlocConsumer<IdentityBloc, IdentityState>(
        listener: (context, state) {
          if (state is IdentityFailure) {
            showMessage(state.message);
          } else if (state is IdentitySuccess) {
            onVerifyOtp(
              state.signUpEntity.expiresIn,
              state.signUpEntity.codeLength,
            );
          }
        },
        builder: (context, state) {
          return IdentityContent(
            state: state,
            phoneNumber: phoneNumber,
            needReferralCode: needReferralCode,
          );
        },
      ),
    );
  }
}
