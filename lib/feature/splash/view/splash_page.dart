import 'package:banx/feature/splash/presentation/bloc/splash_bloc.dart';
import 'package:banx/feature/splash/presentation/bloc/splash_state.dart';
import 'package:banx/feature/splash/view/splash_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class SplashPage extends StatelessWidget {
  final Function() onVerifyPassword;
  final Function() onPhone;

  final Function(String) showMessage;

  const SplashPage({
    super.key,
    required this.onVerifyPassword,
    required this.onPhone,
    required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<SplashBloc>()..add(Init()),
      child: BlocConsumer<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state.status == SplashStatus.failure &&
              state.errorMessage.isNotEmpty) {
            showMessage(state.errorMessage);
          } else if (state.status == SplashStatus.verifyPassword) {
            onVerifyPassword();
          } else if (state.status == SplashStatus.phone) {
            onPhone();
          }
        },
        builder: (context, state) {
          return const SplashContent();
        },
      ),
    );
  }
}
