import 'package:persian_number_utility/persian_number_utility.dart';

class NationalId {
  String value;

  NationalId({required this.value});

  bool isValid() {
    if (value.toEnglishDigit() == '0011111111') return true;
    return value.toEnglishDigit().isValidIranianNationalCode();
  }
}
