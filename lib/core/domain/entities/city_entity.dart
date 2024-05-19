import 'package:banx/core/domain/entities/entity.dart';

class CityEntity extends Entity {
  final int id;
  final String name;

  CityEntity({required this.id, required this.name});
}
