import 'package:banx/composition/check_postal_code_page_factory.dart';
import 'package:banx/composition/card_delivery_time_page_factory.dart';
import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/feature/select_address/presentation/view/select_address_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class SelectAddressPageFactory {
  static const path = "/select_address";

  static SelectAddressPage builder({
    required BuildContext context,
    required GoRouterState state,
    required SelectAddressExtra extra,
    required Function(String message) showMessage,
  }) {
    return SelectAddressPage(
      showMessage: showMessage,
      addressList: extra.addressList,
      addressSelected: (address, cardShippingTimeSlots) {
        context.push(CardDeliveryTimePageFactory.path,
            extra: CardDeliveryTimeExtra(
              address: address,
              cardTypeId: extra.cardTypeId,
              cardShippingTimeSlots: cardShippingTimeSlots,
            ));
      },
      onAddAddress: () {
        context.push(
          CheckPostalCodePageFactory.path,
          extra: CheckPostalCodeExtra(cardTypeId: extra.cardTypeId),
        );
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (SelectAddressPageFactory.path),
        builder: (ctx, state) {
          final extra = state.extra as SelectAddressExtra;
          return SelectAddressPageFactory.builder(
            context: ctx,
            state: state,
            extra: extra,
            showMessage: showMessage,
          );
        },
        routes: routes);
  }
}

class SelectAddressExtra {
  final List<AddressEntity> addressList;
  final int cardTypeId;

  SelectAddressExtra({
    required this.addressList,
    required this.cardTypeId,
  });
}
