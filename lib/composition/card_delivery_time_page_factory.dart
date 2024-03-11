import 'package:banx/composition/kyc_status_page_factory.dart';
import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/core/domain/entities/shipping_time_entity.dart';
import 'package:banx/feature/card_delivery_time/presentation/view/card_delivery_time_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class CardDeliveryTimePageFactory {
  static const path = "/card_delivery_time";

  static CardDeliveryTimePage builder({
    required BuildContext context,
    required CardDeliveryTimeExtra extra,
    required Function(String message) showMessage,
  }) {
    return CardDeliveryTimePage(
      address: extra.address,
      cardShippingTimeSlots: extra.cardShippingTimeSlots,
      cardTypeId: extra.cardTypeId,
      onDeeplinkLanding: (deeplink) {
        context.go(deeplink);
      },
      showMessage: showMessage,
      onNext: () {
        context.push(KycStatusPageFactory.path);
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (CardDeliveryTimePageFactory.path),
        builder: (ctx, state) {
          final extra = state.extra  as CardDeliveryTimeExtra;
          return CardDeliveryTimePageFactory.builder(
            context: ctx,
            extra: extra,
            showMessage: showMessage,
          );
        },
        routes: routes);
  }
}

class CardDeliveryTimeExtra {
  final AddressEntity address;
  final List<ShippingTimeEntity> cardShippingTimeSlots;
  final int cardTypeId;

  CardDeliveryTimeExtra({
    required this.address,
    required this.cardTypeId,
    required this.cardShippingTimeSlots,
  });
}
