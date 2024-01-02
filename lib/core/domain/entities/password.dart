import 'package:persian_number_utility/persian_number_utility.dart';

class Password {
  final String value;

  Password({required this.value});

  bool isValid() {
    /*
    * min: 8, max: 30 characters, at least 1 uppercase letter,
    *  1 lowercase letter and 1 number*/

    return RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,30}$')
        .hasMatch(value.toEnglishDigit());
  }
}
