import 'package:banx/feature/national_serial/presentation/view/national_serial_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class NationalSerialPageFactory {
  static const path = "/national_serial";

  static NationalSerialPage builder({
    required BuildContext context,
    required GoRouterState state,
    required NationalSerialExtra extra,
    required Function(String) showMessage,
  }) {
    return NationalSerialPage(
      showMessage: showMessage,
      onNext: (_) {},
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String) showMessage,
  }) {
    return GoRoute(
        path: (NationalSerialPageFactory.path),
        builder: (ctx, state) {
          final extra = state.extra != null
              ? state.extra as NationalSerialExtra
              : NationalSerialExtra();
          return NationalSerialPageFactory.builder(
            showMessage: showMessage,
            context: ctx,
            state: state,
            extra: extra,
          );
        },
        routes: routes);
  }
}

class NationalSerialExtra {}
