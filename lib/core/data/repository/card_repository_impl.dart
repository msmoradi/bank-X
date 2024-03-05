import 'package:banx/core/data/datasource/remote/card_remote_datasource.dart';
import 'package:banx/core/data/mapper/card_mapper.dart';
import 'package:banx/core/data/mapper/response.mapper.dart';
import 'package:banx/core/domain/entities/card_shipping_time_slots_entity.dart';
import 'package:banx/core/domain/entities/card_types_entity.dart';
import 'package:banx/core/domain/entities/empty_entity.dart';
import 'package:banx/core/domain/entities/entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';
import 'package:banx/core/domain/repository/card_repository.dart';
import 'package:banx/core/domain/repository/profile_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CardRepository)
class CardRepositoryImpl extends CardRepository {
  final CardRemoteDataSource cardRemoteDataSource;
  final ProfileRepository profileRepository;

  CardRepositoryImpl({
    required this.cardRemoteDataSource,
    required this.profileRepository,
  });

  @override
  Future<EntityWrapper<Entity>> orders({
    required int addressId,
    required int typeId,
    required int cardShippingTimeSlotId,
  }) {
    return cardRemoteDataSource
        .orders(
            addressId: addressId,
            typeId: typeId,
            cardShippingTimeSlotId: cardShippingTimeSlotId)
        .mapResponseToEntityWrapper(mapper: (model) {
      return EmptyEntity();
    }).then((entityWrapper) async {
      if (entityWrapper is SuccessEntityWrapper<EmptyEntity>) {
        return await profileRepository.getProfile();
      }
      return entityWrapper;
    });
  }

  @override
  Future<EntityWrapper<CardShippingTimeSlotsEntity>> shippingTimeSlots() {
    return cardRemoteDataSource
        .shippingTimeSlots()
        .mapResponseToEntityWrapper(mapper: (dto) => dto.toEntity());
  }

  @override
  Future<EntityWrapper<CardTypesResponseEntity>> types() {
    return cardRemoteDataSource
        .types()
        .mapResponseToEntityWrapper(mapper: (dto) => dto.toEntity());
  }
}
