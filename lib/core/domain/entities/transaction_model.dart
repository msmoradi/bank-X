import 'package:banx/core/designsystem/widgets/components/bank_transaction_icon.dart';
import 'package:banx/core/designsystem/widgets/components/diamond_transaction_icon.dart';
import 'package:banx/core/designsystem/widgets/components/gold_transaction_icon.dart';
import 'package:banx/core/designsystem/widgets/components/rial_transaction_icon.dart';
import 'package:banx/core/designsystem/widgets/components/saffron_transaction_icon.dart';
import 'package:banx/core/designsystem/widgets/components/transaction_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TransactionModel {
  final bool isInput;
  final TransactionType transactionType;
  final String title;
  final String subtitle;
  final String amount;

  TransactionModel(
      {required this.title,
      required this.isInput,
      required this.transactionType,
      required this.subtitle,
      required this.amount});

  TransactionCard toTransactionCard() {
    return TransactionCard(
      title: title,
      subtitle: subtitle,
      amount: amount,
      image: _getImageForTransactionType(),
    );
  }

  Widget _getImageForTransactionType() {
    switch (transactionType) {
      case TransactionType.bank:
        return BankTransactionIcon(
          isInput: isInput,
        );
      case TransactionType.rial:
        return RialTransactionIcon(
          isInput: isInput,
        );
      case TransactionType.gold:
        return GoldTransactionIcon(
          isInput: isInput,
        );
      case TransactionType.diamond:
        return DiamondTransactionIcon(
          isInput: isInput,
        );
      case TransactionType.saffron:
        return SaffronTransactionIcon(
          isInput: isInput,
        );
    }
  }
}

enum TransactionType { bank, rial, gold, diamond, saffron }
