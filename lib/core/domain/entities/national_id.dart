import 'package:persian_number_utility/persian_number_utility.dart';

class NationalId {
  String value;

  NationalId({required this.value});

  bool isValid() {
    return value.toEnglishDigit().isValidIranianNationalCode();
  }
}
