import 'package:banx/feature/bank/presentation/bloc/bank_bloc.dart';
import 'package:banx/feature/bank/presentation/bloc/bank_state.dart';
import 'package:banx/feature/bank/presentation/view/bank_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class BankPage extends StatelessWidget {
  final VoidCallback cardActivation;
  final Function(String) showMessage;

  const BankPage({
    super.key,
    required this.cardActivation,
    required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<BankBloc>(),
      child: BlocConsumer<BankBloc, BankState>(
        listener: (context, state) {
          if (state.status == BankStatus.failure) {
            showMessage(state.errorMessage);
          } else if (state.status == BankStatus.cardActivation) {
            cardActivation();
          }
        },
        builder: (context, state) {
          return BankContent(
            showLoading: state.status == BankStatus.loading,
            cardFrontPath: state.cardFrontPath,
            transactions: state.transactions,
            bankCardStatus: state.bankCardStatus,
            showCardDeliveryContainer: state.showCardDeliveryContainer,
            showCardDeliveryButton: state.showCardDeliveryButton,
            cardDeliveryActionTitle: state.cardDeliveryActionTitle,
            cardDeliveryActionAssetPath: state.cardDeliveryActionAssetPath,
            onCardDeliveryActionClick: () {
              context.read<BankBloc>().add(BankXClick());
            },
            cardDeliveryEntity: state.cardDeliveryEntity,
          );
        },
      ),
    );
  }
}
