import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/core/domain/entities/shipping_time_entity.dart';
import 'package:banx/feature/add_address/presentation/bloc/add_address_state.dart';
import 'package:banx/feature/add_address/presentation/view/add_address_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../bloc/add_address_bloc.dart';

class AddAddressPage extends StatelessWidget {
  final Function(AddressEntity, List<ShippingTimeEntity>) addressSelected;
  final Function(String) showMessage;
  final AddressEntity address;

  const AddAddressPage({
    super.key,
    required this.addressSelected,
    required this.showMessage,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<AddAddressBloc>(),
      child: BlocConsumer<AddAddressBloc, AddAddressState>(
        listener: (context, state) {
          if (state.status == AddAddressStatus.failure) {
            showMessage(state.errorMessage);
          } else if (state.status == AddAddressStatus.addressSelected) {
            addressSelected(state.address!, state.cardShippingTimeSlots);
          }
        },
        builder: (context, state) {
          return AddAddressContent(
            showLoading: state.status == AddAddressStatus.loading,
            addressEntity: address,
            onAddAddressSubmitted: (addressEntity) {
              context
                  .read<AddAddressBloc>()
                  .add(AddAddressSubmitted(addressEntity));
            },
          );
        },
      ),
    );
  }
}
