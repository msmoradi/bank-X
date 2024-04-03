import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/core/domain/entities/shipping_time_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_address_state.freezed.dart';

enum AddAddressStatus { initial, failure, loading, addressSelected }

@freezed
class AddAddressState with _$AddAddressState {
  const factory AddAddressState({
    @Default(AddAddressStatus.initial) AddAddressStatus status,
    @Default('') String errorMessage,
    @Default([]) List<ShippingTimeEntity> cardShippingTimeSlots,
    AddressEntity? address,
  }) = _AddAddressState;
}
