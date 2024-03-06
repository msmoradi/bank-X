import 'package:banx/composition/check_postal_code_page_factory.dart';
import 'package:banx/composition/select_address_page_factory.dart';
import 'package:banx/feature/select_card/presentation/view/select_card_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class SelectCardPageFactory {
  static const path = "/select_card";

  static SelectCardPage builder({
    required BuildContext context,
    required GoRouterState state,
    required Function(String message) showMessage,
  }) {
    return SelectCardPage(
      showMessage: showMessage,
      onCardSelected: (addressList, cardTypeId) {
        context.push(
          SelectAddressPageFactory.path,
          extra: SelectAddressExtra(
            addressList: addressList,
            cardTypeId: cardTypeId,
          ),
        );
      },
      onCheckPostalCode: (cardTypeId) {
        context.push(
          CheckPostalCodePageFactory.path,
          extra: CheckPostalCodeExtra(cardTypeId: cardTypeId),
        );
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (SelectCardPageFactory.path),
        builder: (ctx, state) {
          return SelectCardPageFactory.builder(
            context: ctx,
            state: state,
            showMessage: showMessage,
          );
        },
        routes: routes);
  }
}
