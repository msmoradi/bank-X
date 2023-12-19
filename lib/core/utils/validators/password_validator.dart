import 'package:banx/core/domain/entities/password.dart';
import 'package:flutter/material.dart';

import 'base/validation_error.dart';
import 'base/validation_result.dart';
import 'base/validator.dart';
import 'emptiness_validator.dart';

class PasswordValidator extends FieldValidator {
  final String? _password;

  PasswordValidator(this._password);

  @override
  ValidationResult validate() {
    final emptinessResult = EmptinessValidator([_password]).validate();
    if (!emptinessResult.isValid) {
      return emptinessResult;
    }
    if (!Password(value: _password!).isValid()) {
      return ValidationResult.invalid(PasswordStructuralError());
    }

    return ValidationResult.valid();
  }
}

class PasswordStructuralError implements ValidationError {
  @override
  String getMessage(BuildContext context) {
    return '"رمز عبور باید حداقل ۸ کاراکتر و یک حرف بزرگ داشته باشد"';
  }
}
