import 'package:banx/core/domain/entities/shipping_time_entity.dart';
import 'package:flutter/material.dart';

class DeliveryCardTimes extends StatelessWidget {
  final List<ShippingTimeEntity> cardShippingTimeSlots;
  final int selectedTime;

  final Function(int) onItemSelected;

  const DeliveryCardTimes({
    super.key,
    required this.cardShippingTimeSlots,
    required this.onItemSelected,
    required this.selectedTime,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(cardShippingTimeSlots.length, (index) {
          final timeSlot = cardShippingTimeSlots[index];
          return Column(
            children: [
              InkWell(
                onTap: () => onItemSelected(timeSlot.id),
                child: Container(
                  constraints: const BoxConstraints(minHeight: 40),
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text(timeSlot.datetime)),
                      const SizedBox(width: 10),
                      Icon(
                        timeSlot.id == selectedTime
                            ? Icons.radio_button_checked
                            : Icons.radio_button_unchecked,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              if (index != cardShippingTimeSlots.length - 1) const Divider(),
            ],
          );
        }),
      ),
    );
  }
}
