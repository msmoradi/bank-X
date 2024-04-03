import 'package:banx/composition/card_delivery_time_page_factory.dart';
import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/feature/add_address/presentation/view/add_address_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class AddAddressPageFactory {
  static const path = "/add_address";

  static AddAddressPage builder(
      {required BuildContext context,
      required GoRouterState state,
      required AddAddressExtra extra,
      required Function(String message) showMessage}) {
    return AddAddressPage(
      address: extra.address,
      showMessage: showMessage,
      addressSelected: (address,cardShippingTimeSlots) {
        context.push(
          CardDeliveryTimePageFactory.path,
          extra: CardDeliveryTimeExtra(
            address: address,
            cardTypeId: extra.cardTypeId,
            cardShippingTimeSlots: cardShippingTimeSlots,
          ),
        );
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (AddAddressPageFactory.path),
        builder: (ctx, state) {
          final extra = state.extra as AddAddressExtra;
          return AddAddressPageFactory.builder(
            context: ctx,
            state: state,
            extra: extra,
            showMessage: showMessage,
          );
        },
        routes: routes);
  }
}

class AddAddressExtra {
  final int cardTypeId;
  final AddressEntity address;

  AddAddressExtra({
    required this.cardTypeId,
    required this.address,
  });
}
