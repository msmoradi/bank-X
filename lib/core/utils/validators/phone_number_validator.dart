import 'package:banx/core/domain/entities/phone_number.dart';
import 'package:flutter/material.dart';

import 'base/validation_error.dart';
import 'base/validation_result.dart';
import 'base/validator.dart';
import 'emptiness_validator.dart';

class PhoneNumberValidator extends FieldValidator {
  final String? _phoneNumber;

  PhoneNumberValidator(this._phoneNumber);

  @override
  ValidationResult validate() {
    if (!EmptinessValidator([_phoneNumber]).validate().isValid) {
      return ValidationResult.invalid(PhoneNumberEmptyError());
    }
    if (!PhoneNumber(value: _phoneNumber!).isValid()) {
      return ValidationResult.invalid(PhoneNumberStructuralError());
    }

    return ValidationResult.valid();
  }
}

class PhoneNumberStructuralError implements ValidationError {
  @override
  String getMessage(BuildContext context) {
    return "شماره تلفن همراه خود را صحیح وارد کنید";
  }
}

class PhoneNumberEmptyError implements ValidationError {
  @override
  String getMessage(BuildContext context) {
    return "شماره تلفن همراه خود را وارد کنید";
  }
}
