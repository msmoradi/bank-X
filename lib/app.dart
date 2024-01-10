import 'package:banx/core/designsystem/theme/theme.dart';
import 'package:banx/core/networking/model/dto/error_action_handler.dart';
import 'package:banx/error_action_listener.dart';
import 'package:banx/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:toastification/toastification.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void dispose() {
    ErrorActionHandler().dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _router = getRouterConfig(
      showMessage: (message) {
        toastification.show(
          type: ToastificationType.error,
          style: ToastificationStyle.fillColored,
          alignment: Alignment.bottomCenter,
          showProgressBar: false,
          closeOnClick: true,
          dragToClose: true,
          title: Text(message),
          autoCloseDuration: const Duration(seconds: 3),
        );
      },
    );

    precacheImages(context);
    return ToastificationWrapper(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: _router,
        theme: BanxTheme.light(),
        darkTheme: BanxTheme.dark(),
        locale: const Locale("fa", "IR"),
        supportedLocales: const [
          Locale("fa", "IR"),
        ],
        localizationsDelegates: const [
          PersianMaterialLocalizations.delegate,
          PersianCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        builder: (context, child) {
          // Wrap with a listener widget to handle ErrorActions
          return ErrorActionListener(
            navigate: (path) {
              _router.go(path);
            },
            showMessage: (message) {
              toastification.show(
                type: ToastificationType.error,
                style: ToastificationStyle.fillColored,
                alignment: Alignment.bottomCenter,
                showProgressBar: false,
                closeOnClick: true,
                dragToClose: true,
                title: Text(message),
                autoCloseDuration: const Duration(seconds: 3),
              );
            },
            child: child!,
          );
        },
      ),
    );
  }

  void precacheImages(BuildContext context) {
    // precacheImage(const AssetImage("assets/images/asset_shape.png"), context);
  }
}
