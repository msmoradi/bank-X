import 'package:banx/composition/card_activation_otp_page_factory.dart';
import 'package:banx/feature/card_activation/presentation/view/card_activation_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class CardActivationPageFactory {
  static const path = "/cardActivation";

  static CardActivationPage builder({
    required BuildContext context,
    required Function(String message) showMessage,
  }) {
    return CardActivationPage(
      showMessage: showMessage,
      onVerifyOtp: (phoneNumber, expiresIn, codeLength) {
        context.push(
          "${CardActivationOtpPageFactory.startPath}/$phoneNumber/$codeLength/$expiresIn",
        );
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (CardActivationPageFactory.path),
        builder: (ctx, state) {
          return CardActivationPageFactory.builder(
            context: ctx,
            showMessage: showMessage,
          );
        },
        routes: routes);
  }
}
