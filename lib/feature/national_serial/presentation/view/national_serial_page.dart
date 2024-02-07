import 'package:banx/feature/national_serial/presentation/view/national_serial_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../bloc/national_serial_bloc.dart';

class NationalSerialPage extends StatelessWidget {
  final Function(String) onNext;
  final Function(String) showMessage;

  const NationalSerialPage({
    super.key,
    required this.onNext,
    required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<NationalSerialBloc>(),
      child: BlocConsumer<NationalSerialBloc, NationalSerialState>(
        listener: (context, state) {
          if (state is NationalSerialFailure) {
            showMessage(state.message);
          } else if (state is NationalSerialSuccess) {
            onNext(state.address);
          }
        },
        builder: (context, state) {
          return NationalSerialContent(
            showLoading: state is NationalSerialInProgress,
          );
        },
      ),
    );
  }
}
