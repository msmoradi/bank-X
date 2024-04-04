import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/core/domain/entities/shipping_time_entity.dart';
import 'package:banx/feature/select_address/presentation/bloc/select_address_bloc.dart';
import 'package:banx/feature/select_address/presentation/view/select_address_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class SelectAddressPage extends StatelessWidget {
  final Function(AddressEntity, List<ShippingTimeEntity>) addressSelected;
  final Function() onAddAddress;
  final Function(String) showMessage;
  final List<AddressEntity> addressList;

  const SelectAddressPage({
    super.key,
    required this.addressSelected,
    required this.showMessage,
    required this.addressList,
    required this.onAddAddress,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<SelectAddressBloc>(),
      child: BlocConsumer<SelectAddressBloc, SelectAddressState>(
        listener: (context, state) {
          if (state is SelectAddressFailure) {
            showMessage(state.message);
          } else if (state is SelectAddressSuccess) {
            addressSelected(state.address, state.cardShippingTimeSlots);
          }
        },
        builder: (context, state) {
          return SelectAddressContent(
            showLoading: state is SelectAddressInProgress,
            addressSelected: (addressEntity) {
              context
                  .read<SelectAddressBloc>()
                  .add(AddressSelected(addressEntity));
            },
            onAddAddress: onAddAddress,
            addressList: addressList,
          );
        },
      ),
    );
  }
}
