import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/core/domain/entities/card_shipping_time_slots_entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';
import 'package:banx/core/domain/repository/address_repository.dart';
import 'package:banx/core/domain/repository/card_repository.dart';
import 'package:banx/feature/add_address/presentation/bloc/add_address_state.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'add_address_event.dart';

@injectable
class AddAddressBloc extends Bloc<AddAddressEvent, AddAddressState> {
  final AddressRepository addressRepository;
  final CardRepository cardRepository;

  AddAddressBloc({
    required this.addressRepository,
    required this.cardRepository,
  }) : super(const AddAddressState()) {
    on<AddAddressSubmitted>(_onAddAddressSubmitted);
  }

  Future<void> _onAddAddressSubmitted(
    AddAddressSubmitted event,
    Emitter<AddAddressState> emit,
  ) async {
    emit(state.copyWith(status: AddAddressStatus.loading));
    try {
      final response = await addressRepository
          .postAddress(addressEntity: event.addressEntity)
          .then((entityWrapper) async {
        if (entityWrapper is SuccessEntityWrapper<AddressEntity>) {
          emit(state.copyWith(address: entityWrapper.data));
          return await cardRepository.shippingTimeSlots();
        }
        return entityWrapper;
      });
      response.when(
        success: (entity) {
          if (entity is CardShippingTimeSlotsEntity) {
            emit(
              state.copyWith(
                  status: AddAddressStatus.addressSelected,
                  cardShippingTimeSlots: entity.cardShippingTimeSlots),
            );
          }
        },
        partialSuccess: (message) => emit(
          state.copyWith(
            status: AddAddressStatus.failure,
            errorMessage: message,
          ),
        ),
        networkError: (exception) => emit(
          state.copyWith(
            status: AddAddressStatus.failure,
            errorMessage: exception.toString(),
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: AddAddressStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
