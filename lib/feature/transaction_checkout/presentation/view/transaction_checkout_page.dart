import 'package:banx/core/designsystem/widgets/components/drop_down_chip_widget.dart';
import 'package:banx/feature/transaction_checkout/presentation/bloc/transaction_checkout_bloc.dart';
import 'package:banx/feature/transaction_checkout/presentation/bloc/transaction_checkout_state.dart';
import 'package:banx/feature/transaction_checkout/presentation/view/transaction_checkout_content.dart';
import 'package:banx/feature/transaction_destination/presentation/view/transaction_destination_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class TransactionCheckoutPage extends StatelessWidget {
  final String amount;
  final DepositType sourceDepositType;
  final UserInfo sourceUserInfo;
  final DepositType destinationDepositType;
  final UserInfo destinationUserInfo;

  final Function(String) showMessage;

  const TransactionCheckoutPage({
    super.key,
    required this.amount,
    required this.sourceDepositType,
    required this.showMessage,
    required this.sourceUserInfo,
    required this.destinationDepositType,
    required this.destinationUserInfo,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<TransactionCheckoutBloc>()
        ..add(Init(
            sourceDepositType: sourceDepositType,
            sourceUserInfo: sourceUserInfo,
            destinationDepositType: destinationDepositType,
            destinationUserInfo: destinationUserInfo)),
      child: BlocConsumer<TransactionCheckoutBloc, TransactionCheckoutState>(
        listener: (context, state) {
          if (state.status == TransactionCheckoutStatus.failure) {
            showMessage(state.errorMessage);
          }
        },
        builder: (context, state) {
          return TransactionCheckoutContent(
            amount: amount,
            conversionFee: state.conversionFee,
            buttonLoading: state.buttonLoading,
            sourceDepositType: state.sourceDepositType,
            sourceUserInfo: state.sourceUserInfo,
            destinationDepositType: state.destinationDepositType,
            destinationUserInfo: state.destinationUserInfo,
            transactionTimes: state.transactionTimes,
            onActionClick: () {},
            onDestinationSelectTypeClick: (type) {
              context
                  .read<TransactionCheckoutBloc>()
                  .add(DestinationSelectTypeEvent(type));
            },
            onSourceSelectTypeClick: (type) {
              context
                  .read<TransactionCheckoutBloc>()
                  .add(SourceSelectTypeEvent(type));
            },
          );
        },
      ),
    );
  }
}
