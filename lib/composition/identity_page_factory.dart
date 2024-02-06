import 'package:banx/composition/verify_otp_page_factory.dart';
import 'package:banx/feature/identity/presentation/view/identity_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class IdentityPageFactory {
  static const startPath = "/identity";
  static const path = "$startPath/:phoneNumber/:needReferralCode";

  static IdentityPage builder({
    required BuildContext context,
    required String phoneNumber,
    required bool needReferralCode,
    required Function(String) showMessage,
  }) {
    return IdentityPage(
      phoneNumber: phoneNumber,
      showMessage: showMessage,
      needReferralCode: needReferralCode,
      onVerifyOtp: (expiresIn, codeLength) {
        context.push(
          "${VerifyOtpPageFactory.startPath}/$phoneNumber/$codeLength/$expiresIn",
        );
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String) showMessage,
  }) {
    return GoRoute(
        path: (IdentityPageFactory.path),
        builder: (ctx, state) {
          final phoneNumber = state.pathParameters['phoneNumber'] ?? "";
          final needReferralCode =
              bool.tryParse(state.pathParameters['needReferralCode'] ?? "") ??
                  false;

          return IdentityPageFactory.builder(
            showMessage: showMessage,
            context: ctx,
            phoneNumber: phoneNumber,
            needReferralCode: needReferralCode,
          );
        },
        routes: routes);
  }
}
