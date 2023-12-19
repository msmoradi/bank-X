import 'validation_error.dart';

class ValidationResult {
  final bool isValid;
  final ValidationError? error;

  ValidationResult._(this.isValid, this.error);

  factory ValidationResult.valid() {
    return ValidationResult._(true, null);
  }

  factory ValidationResult.invalid(ValidationError error) {
    return ValidationResult._(false, error);
  }
}