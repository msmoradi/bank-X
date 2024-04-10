import 'package:banx/composition/transaction_destination_page_factory.dart';
import 'package:banx/feature/transaction/presentation/bloc/transaction_bloc.dart';
import 'package:banx/feature/transaction/presentation/bloc/transaction_state.dart';
import 'package:banx/feature/transaction/presentation/view/transaction_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<TransactionBloc>(),
      child: BlocConsumer<TransactionBloc, TransactionState>(
        listener: (context, state) {
          if (state.status == TransactionStatus.failure) {
            // showMessage(state.errorMessage);
          } else if (state.status == TransactionStatus.deepLinkLanding) {
            //  onDeeplinkLanding(state.deeplink);
          }
        },
        builder: (context, state) {
          return TransactionContent(
            selectedType: state.selectedType,
            value: state.value,
            onBackspace: () {
              context.read<TransactionBloc>().add(const RemoveValueEvent());
            },
            onKeyTapped: (key) {
              context.read<TransactionBloc>().add(AddValueEvent(key: key));
            },
            onActionClick: () {
              context.push(TransactionDestinationPageFactory.path,
                  extra: TransactionDestinationExtra(
                      amount: "${state.value} ${state.selectedType.unit}",
                      sourceDepositType: state.selectedType));
            },
          );
        },
      ),
    );
  }
}
