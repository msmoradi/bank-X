import 'package:banx/composition/transaction_checkout_page_factory.dart';
import 'package:banx/core/designsystem/widgets/components/drop_down_chip_widget.dart';
import 'package:banx/feature/transaction_destination/presentation/view/transaction_destination_content.dart';
import 'package:banx/feature/transaction_destination/presentation/view/transaction_destination_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class TransactionDestinationPageFactory {
  static const path = "/transaction_destination";

  static TransactionDestinationPage builder(
      {required BuildContext context,
      required TransactionDestinationExtra extra,
      required Function(String message) showMessage}) {
    return TransactionDestinationPage(
      showMessage: showMessage,
      amount: extra.amount,
      sourceDepositType: extra.sourceDepositType,
      onDestinationSelected: (userInfo) {
        context.push(TransactionCheckoutPageFactory.path,
            extra: TransactionCheckoutExtra(
                amount: extra.amount,
                sourceDepositType: extra.sourceDepositType,
                sourceUserInfo: UserInfo(
                  name: 'کاربر نمونه',
                  cardNumber: '0000000000000000',
                  photoUrl: 'https://i.pravatar.cc/150',
                ),
                destinationDepositType: DepositType.rialDeposit,
                destinationUserInfo: userInfo));
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (TransactionDestinationPageFactory.path),
        builder: (ctx, state) {
          TransactionDestinationExtra extra =
              state.extra as TransactionDestinationExtra;
          return TransactionDestinationPageFactory.builder(
              context: ctx, showMessage: showMessage, extra: extra);
        },
        routes: routes);
  }
}

class TransactionDestinationExtra {
  final String amount;
  final DepositType sourceDepositType;

  TransactionDestinationExtra({
    required this.amount,
    required this.sourceDepositType,
  });
}
