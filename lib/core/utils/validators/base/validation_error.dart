import 'package:flutter/material.dart';

abstract class ValidationError {
  String getMessage(BuildContext context);
}

class EmptinessError extends ValidationError {
  @override
  String getMessage(BuildContext context) {
    return "خطای خالی بودن";
  }
}
