import 'package:banx/composition/create_password_page_factory.dart';
import 'package:banx/feature/onboarding_password/presentation/view/onboarding_password_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class OnboardingPasswordPageFactory {
  static const path = "/onboarding_password";

  static OnboardingPasswordPage builder({
    required BuildContext context,
    required GoRouterState state,
    required Function(String message) showMessage,
  }) {
    return OnboardingPasswordPage(
      showMessage: showMessage,
      onNext: () {
        context.push(
          CreatePasswordPageFactory.path,
        );
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (OnboardingPasswordPageFactory.path),
        builder: (ctx, state) {
          return OnboardingPasswordPageFactory.builder(
            context: ctx,
            state: state,
            showMessage: showMessage,
          );
        },
        routes: routes);
  }
}
