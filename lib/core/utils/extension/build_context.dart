import 'package:banx/core/utils/validators/base/validator.dart';
import 'package:flutter/material.dart';

extension FieldValidatorHandler on BuildContext {
  String? validateFiled(FieldValidator validator) {
    final validationResult = validator.validate();
    if (validationResult.isValid) {
      return null;
    }
    return validationResult.error?.getMessage(this);
  }
}