import 'package:banx/core/domain/entities/postal_code.dart';
import 'package:flutter/material.dart';

import 'base/validation_error.dart';
import 'base/validation_result.dart';
import 'base/validator.dart';
import 'emptiness_validator.dart';

class PostalCodeValidator extends FieldValidator {
  final String? _postalCode;

  PostalCodeValidator(this._postalCode);

  @override
  ValidationResult validate() {
    if (!EmptinessValidator([_postalCode]).validate().isValid) {
      return ValidationResult.invalid(PostalCodeEmptyError());
    }
    if (!PostalCode(value: _postalCode!).isValid()) {
      return ValidationResult.invalid(PostalCodeStructuralError());
    }

    return ValidationResult.valid();
  }
}

class PostalCodeStructuralError implements ValidationError {
  @override
  String getMessage(BuildContext context) {
    return "کدپستی را صحیح وارد کنید";
  }
}

class PostalCodeEmptyError implements ValidationError {
  @override
  String getMessage(BuildContext context) {
    return "کدپستی را وارد کنید";
  }
}
