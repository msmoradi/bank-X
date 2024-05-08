import 'package:banx/feature/main/presentation/bloc/main_bloc.dart';
import 'package:banx/feature/main/presentation/view/main_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class MainPage extends StatelessWidget {
  final Function(String) showMessage;
  final VoidCallback cardActivation;
  final VoidCallback logout;
  final int initTabIndex;

  const MainPage({
    super.key,
    required this.showMessage,
    required this.logout,
    required this.cardActivation,
    required this.initTabIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<MainBloc>(),
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return MainContent(
            showMessage: showMessage,
            logout: logout,
            cardActivation: cardActivation,
            initTabIndex: initTabIndex,
          );
        },
      ),
    );
  }
}
