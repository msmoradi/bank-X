import 'package:banx/core/designsystem/widgets/components/drop_down_chip_widget.dart';
import 'package:banx/feature/transaction_destination/presentation/bloc/transaction_destination_bloc.dart';
import 'package:banx/feature/transaction_destination/presentation/bloc/transaction_destination_state.dart';
import 'package:banx/feature/transaction_destination/presentation/view/transaction_destination_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class TransactionDestinationPage extends StatelessWidget {
  final String amount;
  final DepositType sourceDepositType;
  final Function(UserInfo) onDestinationSelected;
  final Function(String) showMessage;

  const TransactionDestinationPage({
    super.key,
    required this.amount,
    required this.sourceDepositType,
    required this.onDestinationSelected,
    required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<TransactionDestinationBloc>(),
      child:
          BlocConsumer<TransactionDestinationBloc, TransactionDestinationState>(
        listener: (context, state) {
          if (state.status == TransactionDestinationStatus.failure) {
            showMessage(state.errorMessage);
          }
        },
        builder: (context, state) {
          return TransactionDestinationContent(
            amount: amount,
            onDestinationSelected: onDestinationSelected,
          );
        },
      ),
    );
  }
}
