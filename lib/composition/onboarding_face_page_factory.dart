import 'package:banx/composition/face_detection_factory.dart';
import 'package:banx/feature/onboarding_face/presentation/view/onboarding_face_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class OnboardingFacePageFactory {
  static const path = "/onboarding_face";

  static OnboardingFacePage builder(
    BuildContext context,
    GoRouterState state,
    Function(String message) showMessage,
  ) {
    return OnboardingFacePage(
      showMessage: showMessage,
      onNext: () {
        context.push(
          FaceDetectionPageFactory.path,
        );
      },
    );
  }

  static GoRoute route({
    List<RouteBase> routes = const <RouteBase>[],
    required Function(String message) showMessage,
  }) {
    return GoRoute(
        path: (OnboardingFacePageFactory.path),
        builder: (ctx, state) {
          return OnboardingFacePageFactory.builder(ctx, state, showMessage);
        },
        routes: routes);
  }
}
