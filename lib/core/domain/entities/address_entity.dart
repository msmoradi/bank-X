import 'package:banx/core/domain/entities/city_entity.dart';
import 'package:banx/core/domain/entities/entity.dart';
import 'package:banx/core/domain/entities/state_entity.dart';

class AddressEntity extends Entity {
  final int? id;
  final int? accountId;
  final String postalCode;
  final String address;
  final String region;
  final String street;
  final String plaque;
  final String floor;
  final String unit;
  final String houseName;
  final CityEntity city;
  final ProvinceEntity province;

  AddressEntity({
    this.id,
    this.accountId,
    required this.postalCode,
    required this.address,
    required this.region,
    required this.street,
    required this.plaque,
    required this.floor,
    required this.unit,
    required this.houseName,
    required this.city,
    required this.province,
  });
}
