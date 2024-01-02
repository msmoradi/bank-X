class ReferralCode {
  String value;

  ReferralCode({required this.value});

  bool isValid() {
    return value.isNotEmpty;
  }
}
