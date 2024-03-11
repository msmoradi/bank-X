import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/components/address_row.dart';
import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/core/domain/entities/shipping_time_entity.dart';
import 'package:banx/feature/card_delivery_time/presentation/view/delivery_card_times.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardDeliveryTimeContent extends StatefulWidget {
  final Function(int) onActionClick;
  final bool showLoading;
  final AddressEntity address;
  final List<ShippingTimeEntity> cardShippingTimeSlots;

  const CardDeliveryTimeContent({
    super.key,
    required this.showLoading,
    required this.onActionClick,
    required this.address,
    required this.cardShippingTimeSlots,
  });

  @override
  State<CardDeliveryTimeContent> createState() =>
      _CardDeliveryTimeContentState();
}

class _CardDeliveryTimeContentState extends State<CardDeliveryTimeContent> {
  late int _selectedTime;

  @override
  void initState() {
    _selectedTime = widget.cardShippingTimeSlots.firstOrNull?.id ?? 0;
    super.initState();
  }

  void _onRadioSelected(int value) {
    setState(() {
      _selectedTime = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        centerTitle: false,
        automaticallyImplyLeading: false,
        titleTextStyle: Theme.of(context).textTheme.headlineMedium,
        title: const Text('زمان دریافت کارت'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 16.0),
                    Image.asset(
                      'assets/images/card-banner.png',
                      height: 80,
                      width: 361,
                    ),
                    const SizedBox(height: 30.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'آدرس دریافت کارت',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: AddressRow(
                        onEditPressed: () {},
                        address: widget.address.address,
                      ),
                    ),
                    const SizedBox(height: 32),
                    Container(
                      height: 12,
                      color:
                          Theme.of(context).colorScheme.surfaceContainerHighest,
                    ),
                    const SizedBox(height: 32),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'زمان دریافت کارت',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary),
                        ),
                      ),
                    ),
                    DeliveryCardTimes(
                      cardShippingTimeSlots: widget.cardShippingTimeSlots,
                      selectedTime: _selectedTime,
                      onItemSelected: _onRadioSelected,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: PrimaryFillButton(
                onPressed: () {
                  widget.onActionClick(
                    _selectedTime ?? widget.cardShippingTimeSlots.first.id,
                  );
                },
                iconAlignment: IconAlignment.start,
                icon: SvgPicture.asset(
                  'assets/icons/thumb-up.svg',
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.onPrimary,
                    BlendMode.srcIn,
                  ),
                ),
                label: 'تأیید زمان و مکان دریافت کارت',
                isLoading: widget.showLoading,
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
