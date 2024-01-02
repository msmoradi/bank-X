import 'package:persian_number_utility/persian_number_utility.dart';

class PhoneNumber {
  String value;

  PhoneNumber({required this.value});

  bool isValid() {
    return RegExp(
            r'^(0|\+98|0098)(999\d{2}(?=\d{5}$)|[9](?:[01239]\d{1})(?=\d{7}$))(\d*)$')
        .hasMatch(value.toEnglishDigit());
  }
}
