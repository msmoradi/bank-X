import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/core/domain/entities/shipping_time_entity.dart';
import 'package:banx/feature/card_delivery_time/presentation/bloc/card_delivery_time_state.dart';
import 'package:banx/feature/card_delivery_time/presentation/view/card_delivery_time_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../bloc/card_delivery_time_bloc.dart';

class CardDeliveryTimePage extends StatelessWidget {
  final Function() onNext;
  final Function(String) showMessage;
  final Function(String deeplink) onDeeplinkLanding;
  final AddressEntity address;
  final int cardTypeId;
  final List<ShippingTimeEntity> cardShippingTimeSlots;

  const CardDeliveryTimePage({
    super.key,
    required this.address,
    required this.cardTypeId,
    required this.cardShippingTimeSlots,
    required this.onNext,
    required this.showMessage,
    required this.onDeeplinkLanding,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<CardDeliveryTimeBloc>(),
      child: BlocConsumer<CardDeliveryTimeBloc, CardDeliveryTimeState>(
        listener: (context, state) {
          if (state.status == CardDeliveryTimeStatus.failure) {
            showMessage(state.errorMessage);
          } else if (state.status == CardDeliveryTimeStatus.deepLinkLanding) {
            onDeeplinkLanding(state.deeplink);
          }
        },
        builder: (context, state) {
          return CardDeliveryTimeContent(
            showLoading: state.status == CardDeliveryTimeStatus.loading,
            onActionClick: (cardShippingTimeSlotId) {
              context.read<CardDeliveryTimeBloc>().add(
                    CardDeliveryTimeSubmitted(
                      addressId: address.id!,
                      typeId: cardTypeId,
                      cardShippingTimeSlotId: cardShippingTimeSlotId,
                    ),
                  );
            },
            address: address,
            cardShippingTimeSlots: cardShippingTimeSlots,
          );
        },
      ),
    );
  }
}
