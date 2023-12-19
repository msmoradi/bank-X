import 'package:banx/core/domain/entities/referral_code.dart';
import 'package:flutter/material.dart';

import 'base/validation_error.dart';
import 'base/validation_result.dart';
import 'base/validator.dart';

class ReferralCodeValidator extends FieldValidator {
  final String? _referralCode;

  ReferralCodeValidator(this._referralCode);

  @override
  ValidationResult validate() {
    if (!ReferralCode(value: _referralCode!).isValid()) {
      return ValidationResult.invalid(ReferralCodeStructuralError());
    }

    return ValidationResult.valid();
  }
}

class ReferralCodeStructuralError implements ValidationError {
  @override
  String getMessage(BuildContext context) {
    return 'کد دعوت خود را وارد کنید';
  }
}
