import 'package:persian_number_utility/persian_number_utility.dart';

class Date {
  String value;

  Date({required this.value});

  bool isValid() {
    return RegExp(r'^((?:13|14)\d{2})(?:-|\/)(0[1-9]|1[0-2])$')
        .hasMatch(value.toEnglishDigit());
  }
}
