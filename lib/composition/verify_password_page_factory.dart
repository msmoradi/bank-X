import 'package:banx/feature/verify_password/presentation/view/verify_password_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class VerifyPasswordPageFactory {
  static const path = "/verifyPassword";

  static VerifyPasswordPage builder(
    BuildContext context,
    GoRouterState state,
    Function(String message) showMessage,
  ) {
    return VerifyPasswordPage(
      showMessage: showMessage,
      onDeeplinkLanding: (deeplink) {
        context.go(deeplink);
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (VerifyPasswordPageFactory.path),
        builder: (ctx, state) {
          return VerifyPasswordPageFactory.builder(
            ctx,
            state,
            showMessage,
          );
        },
        routes: routes);
  }
}
