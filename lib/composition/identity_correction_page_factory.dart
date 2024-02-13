import 'package:banx/composition/verify_otp_page_factory.dart';
import 'package:banx/feature/identity_correction/presentation/view/identity_correction_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class IdentityCorrectionPageFactory {
  static const startPath = "/identityCorrection";
  static const path = "/identityCorrection/:phoneNumber";

  static IdentityCorrectionPage builder({
    required BuildContext context,
    required String phoneNumber,
    required Function(String) showMessage,
  }) {
    return IdentityCorrectionPage(
      showMessage: showMessage,
      phoneNumber: phoneNumber,
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
        path: (IdentityCorrectionPageFactory.path),
        builder: (ctx, state) {
          final phoneNumber = state.pathParameters['phoneNumber'] ?? "";

          return IdentityCorrectionPageFactory.builder(
            showMessage: showMessage,
            context: ctx,
            phoneNumber: phoneNumber,
          );
        },
        routes: routes);
  }
}
