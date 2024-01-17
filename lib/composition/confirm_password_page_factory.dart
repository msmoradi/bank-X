import 'package:banx/composition/enable_biometric_page_factory.dart';
import 'package:banx/feature/confirm_password/presentation/view/confirm_password_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class ConfirmPasswordPageFactory {
  static const path = "/confirm_password";

  static ConfirmPasswordPage builder({
    required BuildContext context,
    required ConfirmPasswordExtra extra,
    required Function(String message) showMessage,
  }) {
    return ConfirmPasswordPage(
      showMessage: showMessage,
      biometricLanding: (deeplink) => context.push(
        EnableBiometricPageFactory.path,
        extra: EnableBiometricExtra(
          password: extra.newPassword,
          deeplink: deeplink,
        ),
      ),
      newPassword: extra.newPassword,
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (ConfirmPasswordPageFactory.path),
        builder: (ctx, state) {
          final extra = state.extra as ConfirmPasswordExtra;
          return ConfirmPasswordPageFactory.builder(
            context: ctx,
            extra: extra,
            showMessage: showMessage,
          );
        },
        routes: routes);
  }
}

class ConfirmPasswordExtra {
  final String newPassword;

  ConfirmPasswordExtra({
    required this.newPassword,
  });
}
