import 'package:banx/core/designsystem/widgets/components/drop_down_chip_widget.dart';
import 'package:banx/feature/transaction_checkout/presentation/view/transaction_checkout_page.dart';
import 'package:banx/feature/transaction_destination/presentation/view/transaction_destination_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class TransactionCheckoutPageFactory {
  static const path = "/transaction_checkout";

  static TransactionCheckoutPage builder(
      {required BuildContext context,
      required TransactionCheckoutExtra extra,
      required Function(String message) showMessage}) {
    return TransactionCheckoutPage(
      showMessage: showMessage,
      amount: extra.amount,
      sourceDepositType: extra.sourceDepositType,
      sourceUserInfo: extra.sourceUserInfo,
      destinationUserInfo: extra.destinationUserInfo,
      destinationDepositType: extra.destinationDepositType,
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (TransactionCheckoutPageFactory.path),
        builder: (ctx, state) {
          TransactionCheckoutExtra extra =
              state.extra as TransactionCheckoutExtra;
          return TransactionCheckoutPageFactory.builder(
              context: ctx, showMessage: showMessage, extra: extra);
        },
        routes: routes);
  }
}

class TransactionCheckoutExtra {
  final String amount;
  final UserInfo destinationUserInfo;
  final UserInfo sourceUserInfo;
  final DepositType sourceDepositType;
  final DepositType destinationDepositType;

  TransactionCheckoutExtra({
    required this.amount,
    required this.sourceDepositType,
    required this.destinationDepositType,
    required this.destinationUserInfo,
    required this.sourceUserInfo,
  });
}
