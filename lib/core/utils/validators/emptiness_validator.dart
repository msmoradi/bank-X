import 'package:banx/core/utils/extension/strings.dart';

import 'base/validation_error.dart';
import 'base/validation_result.dart';
import 'base/validator.dart';

class EmptinessValidator extends FieldValidator {
  final List<String?> _values;

  EmptinessValidator(this._values);

  @override
  ValidationResult validate() {
    for (var element in _values) {
      if (element.isNullOrEmpty) {
        return ValidationResult.invalid(EmptinessError());
      }
    }

    return ValidationResult.valid();
  }
}