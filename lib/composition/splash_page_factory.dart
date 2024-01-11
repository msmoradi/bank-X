import 'package:banx/composition/phone_page_factory.dart';
import 'package:banx/composition/verify_password_page_factory.dart';
import 'package:banx/feature/splash/view/splash_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class SplashPageFactory {
  static const path = "/splash";

  static SplashPage builder({
    required BuildContext context,
    required GoRouterState state,
    required Function(String message) showMessage,
  }) {
    return SplashPage(
      showMessage: showMessage,
      onVerifyPassword: () {
        context.go(VerifyPasswordPageFactory.path);
      },
      onPhone: () {
        context.go(PhonePageFactory.path);
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (SplashPageFactory.path),
        builder: (ctx, state) {
          return SplashPageFactory.builder(
            context: ctx,
            state: state,
            showMessage: showMessage,
          );
        },
        routes: routes);
  }
}
