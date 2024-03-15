import 'package:banx/feature/assist/presentation/bloc/assist_bloc.dart';
import 'package:banx/feature/assist/presentation/view/assist_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class AssistPage extends StatelessWidget {
  const AssistPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<AssistBloc>(),
      child: BlocBuilder<AssistBloc, AssistState>(
        builder: (context, state) {
          return const AssistContent();
        },
      ),
    );
  }
}
