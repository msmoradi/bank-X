import 'dart:async';

import 'package:banx/core/data/datasource/remote/address_remote_datasource.dart';
import 'package:banx/core/data/mapper/address_mapper.dart';
import 'package:banx/core/data/mapper/generic_list_mapper.dart';
import 'package:banx/core/data/mapper/response.mapper.dart';
import 'package:banx/core/data/model/address_dto.dart';
import 'package:banx/core/data/model/city_dto.dart';
import 'package:banx/core/data/model/province_dto.dart';
import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/core/domain/entities/empty_entity.dart';
import 'package:banx/core/domain/entities/generic_list_entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';
import 'package:banx/core/domain/repository/address_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AddressRepository)
class AddressRepositoryImpl extends AddressRepository {
  AddressRepositoryImpl({required this.addressRemoteDataSource});

  final AddressRemoteDataSource addressRemoteDataSource;

  @override
  Future<EntityWrapper<GenericListEntity<AddressEntity>>> getAddress() {
    return addressRemoteDataSource.getAddress().mapResponseToEntityWrapper(
        mapper: (genericDto) {
      return genericDto.toEntity((itemDto) => (itemDto).toEntity());
    });
  }

  @override
  Future<EntityWrapper<AddressEntity>> postAddress({
    required AddressEntity addressEntity,
  }) {
    return addressRemoteDataSource
        .postAddress(
            addressDto: AddressDto(
                postalCode: addressEntity.postalCode,
                address: addressEntity.address,
                region: addressEntity.region,
                street: addressEntity.street,
                plaque: addressEntity.plaque,
                floor: addressEntity.floor,
                unit: addressEntity.unit,
                houseName: addressEntity.houseName,
                city: CityDto(
                    id: addressEntity.city.id, name: addressEntity.city.name),
                province: ProvinceDto(
                    id: addressEntity.province.id,
                    name: addressEntity.province.name)))
        .mapResponseToEntityWrapper(mapper: (dto) {
      return dto.address.toEntity();
    });
  }

  @override
  Future<EntityWrapper<AddressEntity>> getInquiry(
      {required String postalCode}) {
    return addressRemoteDataSource
        .getInquiry(postalCode: postalCode)
        .mapResponseToEntityWrapper(mapper: (model) {
      return model.address.toEntity();
    });
  }

  @override
  Future<EntityWrapper<EmptyEntity>> putAddress() {
    // TODO: implement getCities
    throw UnimplementedError();
  }

  @override
  Future<EntityWrapper<EmptyEntity>> getCities() {
    // TODO: implement getCities
    throw UnimplementedError();
  }

  @override
  Future<EntityWrapper<EmptyEntity>> getStates() {
    // TODO: implement getStates
    throw UnimplementedError();
  }
}
