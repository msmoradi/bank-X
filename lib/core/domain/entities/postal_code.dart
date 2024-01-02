import 'package:persian_number_utility/persian_number_utility.dart';

class PostalCode {
  String value;

  PostalCode({required this.value});

  bool isValid() {
    return value.toEnglishDigit().isValidIranianPostalCode();
  }
}
