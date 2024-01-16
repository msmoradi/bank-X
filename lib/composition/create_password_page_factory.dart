import 'package:banx/composition/confirm_password_page_factory.dart';
import 'package:banx/feature/create_password/presentation/view/create_password_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class CreatePasswordPageFactory {
  static const path = "/create_password";

  static CreatePasswordPage builder(
      {required BuildContext context,
      required GoRouterState state,
      required Function(String message) showMessage,}) {
    return CreatePasswordPage(
        showMessage:showMessage,
      onNext: (password) {
        context.push(
          ConfirmPasswordPageFactory.path,
          extra: ConfirmPasswordExtra(
            newPassword: password,
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
        path: (CreatePasswordPageFactory.path),
        builder: (ctx, state) {
          return CreatePasswordPageFactory.builder(
            context: ctx,
            state: state,
            showMessage: showMessage,
          );
        },
        routes: routes);
  }
}
