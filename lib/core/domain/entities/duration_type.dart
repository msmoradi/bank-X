enum DurationType {
  from2TO4(1),
  from4TO8(2),
  day(3),
  up1Day(3);

  final int value;

  const DurationType(this.value);

  factory DurationType.fromValue(int id) {
    return values.firstWhere((e) => e.value == id);
  }

  @override
  String toString() {
    switch (this) {
      case DurationType.from2TO4:
        return '2 - 4 hours';
      case DurationType.from4TO8:
        return '4 - 8 hours';
      case DurationType.day:
        return 'Day';
      case DurationType.up1Day:
        return 'Days';
    }
  }
}