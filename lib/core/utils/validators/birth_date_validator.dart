import 'package:flutter/material.dart';

import 'base/validation_error.dart';
import 'base/validation_result.dart';
import 'base/validator.dart';
import 'emptiness_validator.dart';

class BirthDateValidator extends FieldValidator {
  final String? birthDate;

  BirthDateValidator(this.birthDate);

  @override
  ValidationResult validate() {
    if (!EmptinessValidator([birthDate]).validate().isValid) {
      return ValidationResult.invalid(BirthDateEmptyError());
    }
    return ValidationResult.valid();
  }
}

class BirthDateEmptyError implements ValidationError {
  @override
  String getMessage(BuildContext context) {
    return "تاریخ تولد خود را وارد نمایید";
  }
}
