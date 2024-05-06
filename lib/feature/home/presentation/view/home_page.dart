import 'package:banx/feature/home/presentation/bloc/home_bloc.dart';
import 'package:banx/feature/home/presentation/bloc/home_state.dart';
import 'package:banx/feature/home/presentation/view/home_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<HomeBloc>(),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return HomeContent(
            nfcActive: state.needNfc,
            isLoading: state.isLoading,
            onTagRead: (tag) {
              context.read<HomeBloc>().add(NFCTagRead(tag: tag));
            },
          );
        },
      ),
    );
  }
}
