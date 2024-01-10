import 'package:banx/app.dart';
import 'package:banx/di.dart';
import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  await SentryFlutter.init(
    (options) {
      options.dsn =
          'YOUR_SENTRY_DSN_HERE'; // Get your DSN from https://sentry.io
      options.tracesSampleRate = 1.0;
      options.profilesSampleRate = 1.0;
    },
    appRunner: () => runApp(const App()),
  );
}
