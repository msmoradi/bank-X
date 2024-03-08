import 'package:banx/composition/main_page_factory.dart';
import 'package:banx/feature/card_activation_otp/presentation/view/card_activation_otp_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class CardActivationOtpPageFactory {
  static const startPath = "/cardActivationOtp";
  static const path = "$startPath/:phoneNumber/:codeLength/:expiresIn";

  static CardActivationOtpPage builder(
    BuildContext context,
    String phoneNumber,
    int codeLength,
    int expiresIn,
    Function(String message) showMessage,
  ) {
    return CardActivationOtpPage(
      showMessage: showMessage,
      phoneNumber: phoneNumber,
      codeLength: codeLength,
      expiresIn: expiresIn,
      onMainPage: () {
        context.go(MainPageFactory.path);
      },
      onBackPressed: context.pop,
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (CardActivationOtpPageFactory.path),
        builder: (ctx, state) {
          final phoneNumber = state.pathParameters['phoneNumber'] ?? "";
          final codeLength =
              int.tryParse(state.pathParameters['codeLength'] ?? "") ?? 0;
          final expiresIn =
              int.tryParse(state.pathParameters['expiresIn'] ?? "") ?? 0;
          return CardActivationOtpPageFactory.builder(
            ctx,
            phoneNumber,
            codeLength,
            expiresIn,
            showMessage,
          );
        },
        routes: routes);
  }
}
