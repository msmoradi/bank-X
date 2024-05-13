import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/core/domain/entities/empty_entity.dart';
import 'package:banx/core/domain/entities/generic_list_entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';

abstract class AddressRepository {
  Future<EntityWrapper<GenericListEntity<AddressEntity>>> getAddress();

  Future<EntityWrapper<AddressEntity>> postAddress({
    required AddressEntity addressEntity,
  });

  Future<EntityWrapper<EmptyEntity>> putAddress();

  Future<EntityWrapper<EmptyEntity>> getStates();

  Future<EntityWrapper<AddressEntity>> getInquiry({required String postalCode});

  Future<EntityWrapper<EmptyEntity>> getCities();
}
