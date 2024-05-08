import 'package:banx/composition/card_activation_page_factory.dart';
import 'package:banx/composition/phone_page_factory.dart';
import 'package:banx/feature/main/presentation/view/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class MainPageFactory {
  static const startPath = "/main";
  static const path = "$startPath/:initTabIndex";

  static MainPage builder(
      {required BuildContext context,
      required int initTabIndex,
      required Function(String message) showMessage}) {
    return MainPage(
      showMessage: showMessage,
      initTabIndex: initTabIndex,
      logout: () {
        context.go(PhonePageFactory.path);
      },
      cardActivation: () {
        context.push(CardActivationPageFactory.path);
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (MainPageFactory.path),
        builder: (ctx, state) {
          final initTabIndex =
              int.tryParse(state.pathParameters['initTabIndex'] ?? "") ?? 0;
          return MainPageFactory.builder(
            context: ctx,
            initTabIndex: initTabIndex,
            showMessage: showMessage,
          );
        },
        routes: routes);
  }
}
