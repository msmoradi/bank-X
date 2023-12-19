import 'package:flutter/material.dart';

import 'base/validation_error.dart';
import 'base/validation_result.dart';
import 'base/validator.dart';
import 'emptiness_validator.dart';

class PasswordConfirmationValidator extends FieldValidator {
  final String? password;
  final String? confirmationPassword;

  PasswordConfirmationValidator({this.password, this.confirmationPassword});

  @override
  ValidationResult validate() {
    final emptinessValidationResult =
        EmptinessValidator([password, confirmationPassword]).validate();
    if (!emptinessValidationResult.isValid) {
      return emptinessValidationResult;
    }
    if (password != confirmationPassword) {
      return ValidationResult.invalid(MisMatchConfirmationPasswordError());
    }

    return ValidationResult.valid();
  }
}

class MisMatchConfirmationPasswordError extends ValidationError {
  @override
  String getMessage(BuildContext context) {
    return "MisMatchConfirmationPasswordError";
  }
}
