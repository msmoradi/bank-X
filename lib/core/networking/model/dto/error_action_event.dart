import 'package:banx/core/networking/model/dto/error_dto.dart';

class ErrorActionEvent {
  final ErrorAction action;
  final String message;

  ErrorActionEvent({required this.action, required this.message});
}
