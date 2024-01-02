enum PasswordAuthentication {
  none,
  set,
  verify,
}

PasswordAuthentication stringToPasswordAuthentication(String value) {
  const map = {
    'None': PasswordAuthentication.none,
    'Set': PasswordAuthentication.set,
    'Verify': PasswordAuthentication.verify,
  };

  final enumValue = map[value];
  if (enumValue == null) {
    throw ArgumentError('Unknown value: $value');
  }
  return enumValue;
}
