import 'package:banx/feature/enable_biometric/presentation/view/enable_biometric_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class EnableBiometricPageFactory {
  static const path = "/enable_biometric";

  static EnableBiometricPage builder({
    required BuildContext context,
    required GoRouterState state,
    required EnableBiometricExtra extra,
    required Function(String message) showMessage,
  }) {
    return EnableBiometricPage(
      showMessage: showMessage,
      onDeeplinkLanding: (deeplink) {
        context.go(deeplink);
      },
      password: extra.password,
      deeplink: extra.deeplink,
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (EnableBiometricPageFactory.path),
        builder: (ctx, state) {
          final extra = state.extra as EnableBiometricExtra;
          return EnableBiometricPageFactory.builder(
            context: ctx,
            state: state,
            extra: extra,
            showMessage: showMessage,
          );
        },
        routes: routes);
  }
}

class EnableBiometricExtra {
  final String password;
  final String deeplink;

  EnableBiometricExtra({
    required this.password,
    required this.deeplink,
  });
}
