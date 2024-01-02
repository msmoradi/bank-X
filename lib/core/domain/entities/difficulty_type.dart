enum DifficultyType {
  easy(1),
  hard(2),
  normal(3);

  final int value;

  const DifficultyType(this.value);

  factory DifficultyType.fromValue(int id) {
    return values.firstWhere((e) => e.value == id);
  }

  @override
  String toString() {
    switch (this) {
      case DifficultyType.normal:
        return 'Normal';
      case DifficultyType.easy:
        return 'Easy';
      case DifficultyType.hard:
        return 'Hard';
    }
  }
}
