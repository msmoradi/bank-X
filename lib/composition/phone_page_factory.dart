import 'package:banx/composition/identity_page_factory.dart';
import 'package:banx/composition/verify_otp_page_factory.dart';
import 'package:banx/feature/phone/presentation/view/phone_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class PhonePageFactory {
  static const path = "/phone";

  static PhonePage builder({
    required BuildContext context,
    required GoRouterState state,
    required Function(String message) showMessage,
  }) {
    return PhonePage(
      showMessage: showMessage,
      onIdentity: (phoneNumber, needReferralCode) {
        context.push(
          "${IdentityPageFactory.startPath}/$phoneNumber/$needReferralCode",
        );
      },
      onVerifyOtp: (phoneNumber, expiresIn, codeLength) {
        context.push(
          "${VerifyOtpPageFactory.startPath}/$phoneNumber/$codeLength/$expiresIn",
        );
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (PhonePageFactory.path),
        builder: (ctx, state) {
          return PhonePageFactory.builder(
            context: ctx,
            state: state,
            showMessage: showMessage,
          );
        },
        routes: routes);
  }
}
