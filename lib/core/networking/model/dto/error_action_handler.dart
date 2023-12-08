import 'dart:async';
import 'package:banx/core/networking/model/dto/error_action_event.dart';
import 'package:banx/core/networking/model/dto/error_dto.dart';

class ErrorActionHandler {
  static final ErrorActionHandler _instance = ErrorActionHandler._internal();

  factory ErrorActionHandler() => _instance;

  ErrorActionHandler._internal();

  final _controller = StreamController<ErrorActionEvent>.broadcast();

  Stream<ErrorActionEvent> get actions => _controller.stream;

  void performAction({required ErrorAction action, required String message}) {
    _controller.add(ErrorActionEvent(action: action, message: message));
  }

  void dispose() {
    _controller.close();
  }
}
