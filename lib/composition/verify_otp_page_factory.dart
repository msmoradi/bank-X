import 'package:banx/composition/main_page_factory.dart';
import 'package:banx/composition/verify_password_page_factory.dart';
import 'package:banx/feature/verify_otp/presentation/view/verify_otp_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class VerifyOtpPageFactory {
  static const startPath = "/verifyOtp";
  static const path = "$startPath/:phoneNumber/:codeLength/:expiresIn";

  static VerifyOtpPage builder(
    BuildContext context,
    String phoneNumber,
    int codeLength,
    int expiresIn,
    Function(String message) showMessage,
  ) {
    return VerifyOtpPage(
      showMessage: showMessage,
      onDeeplinkLanding: (deeplink) {
        context.go(deeplink);
      },
      phoneNumber: phoneNumber,
      codeLength: codeLength,
      expiresIn: expiresIn,
      onMainPage: () {
        context.push(MainPageFactory.path);
      },
      verifyPassword: (refreshToken) {
        context.push(
          VerifyPasswordPageFactory.path,
        );
      },
      onBackPressed: context.pop,
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (VerifyOtpPageFactory.path),
        builder: (ctx, state) {
          final phoneNumber = state.pathParameters['phoneNumber'] ?? "09XXXXXXXXXX";
          final codeLength =
              int.tryParse(state.pathParameters['codeLength'] ?? "") ?? 6;
          final expiresIn =
              int.tryParse(state.pathParameters['expiresIn'] ?? "") ?? 100;

          return VerifyOtpPageFactory.builder(
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
