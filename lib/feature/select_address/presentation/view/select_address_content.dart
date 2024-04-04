import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/components/address_row.dart';
import 'package:banx/core/designsystem/widgets/components/loading_container.dart';
import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectAddressContent extends StatelessWidget {
  final bool showLoading;
  final Function() onAddAddress;
  final List<AddressEntity> addressList;
  final Function(AddressEntity) addressSelected;

  const SelectAddressContent({
    super.key,
    required this.showLoading,
    required this.onAddAddress,
    required this.addressList,
    required this.addressSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        titleTextStyle: Theme.of(context).textTheme.headlineMedium,
        title: Text(
          style: Theme.of(context)
              .textTheme
              .headlineMedium,
          'تحویل کارت',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 16),
              Image.asset(
                'assets/images/card-banner.png',
                height: 80,
                width: 361,
              ),
              const SizedBox(height: 30.0),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'آدرس دریافت کارت خود را انتخاب کنید',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary),
                ),
              ),
              const SizedBox(height: 16),
              LoadingContainer(
                showLoading: showLoading,
                content: Column(
                  children: addressList.map((address) {
                    return GestureDetector(
                        onTap: () {
                          addressSelected(address);
                        },
                        child: AddressRow(address: address.address));
                  }).toList(),
                ),
              ),
              const Spacer(),
              PrimaryFillButton(
                onPressed: onAddAddress,
                iconAlignment: IconAlignment.start,
                icon: SvgPicture.asset(
                  'assets/icons/plus.svg',
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.onPrimary,
                    BlendMode.srcIn,
                  ),
                ),
                label: 'آدرس جدید',
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
