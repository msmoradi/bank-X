import 'dart:async';
import 'package:banx/composition/phone_page_factory.dart';
import 'package:banx/core/domain/repository/token_repository.dart';
import 'package:banx/core/networking/model/dto/error_action_event.dart';
import 'package:banx/core/networking/model/dto/error_action_handler.dart';
import 'package:banx/core/networking/model/dto/error_dto.dart';
import 'package:banx/di.dart';
import 'package:flutter/material.dart';
import 'package:banx/composition/verify_password_page_factory.dart';

class ErrorActionListener extends StatefulWidget {
  final Widget child;
  final Function(String) navigate;
  final Function(String) showMessage;

  const ErrorActionListener({
    Key? key,
    required this.child,
    required this.navigate,
    required this.showMessage,
  }) : super(key: key);

  @override
  _ErrorActionListenerState createState() => _ErrorActionListenerState();
}

class _ErrorActionListenerState extends State<ErrorActionListener> {
  late StreamSubscription<ErrorActionEvent> _subscription;

  @override
  void initState() {
    super.initState();
    _subscription =
        ErrorActionHandler().actions.listen((ErrorActionEvent event) async {
      final action = event.action;
      switch (action) {
        case ErrorAction.loggedOut:
          final tokenRepository = getIt<TokenRepository>();
          await tokenRepository.clearTokens();
          widget.navigate(PhonePageFactory.path);
          break;
        case ErrorAction.nfcLogin:
          _showNfcLoginDialog();
          break;
        case ErrorAction.passwordLogin:
          widget.navigate(VerifyPasswordPageFactory.path);
          break;
        case ErrorAction.toast:
          widget.showMessage(event.message);
          break;
        default:
          break;
      }
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  /// Displays an NFC Login Dialog
  void _showNfcLoginDialog() {}

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
