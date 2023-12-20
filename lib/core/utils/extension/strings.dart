extension StringNullity on String? {
  bool get isNullOrEmpty => this?.isEmpty ?? true;
}
