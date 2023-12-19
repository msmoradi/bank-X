import 'package:banx/core/domain/entities/national_id.dart';
import 'package:flutter/material.dart';

import 'base/validation_error.dart';
import 'base/validation_result.dart';
import 'base/validator.dart';
import 'emptiness_validator.dart';

class NationalIdValidator extends FieldValidator {
  final String? _nationalId;

  NationalIdValidator(this._nationalId);

  @override
  ValidationResult validate() {
    if (!EmptinessValidator([_nationalId]).validate().isValid) {
      return ValidationResult.invalid(NationalIdEmptyError());
    }
    if (!NationalId(value: _nationalId!).isValid()) {
      return ValidationResult.invalid(NationalIdStructuralError());
    }

    return ValidationResult.valid();
  }
}

class NationalIdStructuralError implements ValidationError {
  @override
  String getMessage(BuildContext context) {
    return "کدملی خود را صحیح وارد کنید";
  }
}

class NationalIdEmptyError implements ValidationError {
  @override
  String getMessage(BuildContext context) {
    return "کدملی خود را وارد نمایید";
  }
}
