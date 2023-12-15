import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/components/with_icon_row.dart';
import 'package:flutter/material.dart';

class EditAddressBottomSheet extends StatelessWidget {
  final Function(String address) onButtonPressed;
  final TextEditingController addressController;

  const EditAddressBottomSheet({
    super.key,
    required this.onButtonPressed,
    required this.addressController,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                // Allows the TextFormField to expand to multiple lines
                controller: addressController,
                onFieldSubmitted: (text) {},
                decoration: const InputDecoration(
                  labelText: "ادرس تحویل کارت",
                ),
                validator: (value) {
                  return value?.isNotEmpty == true ? null : 'نام باید پر شود';
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'به نکات زیر توجه کنید',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(
                                  color: Theme.of(context).colorScheme.primary),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const WithIconRow(
                        icon: Icons.warning_amber_rounded,
                        text: 'نام و نام‌خانوادگی شما باید کامل باشد',
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const WithIconRow(
                        icon: Icons.warning_amber_rounded,
                        text: 'نام و نام‌خانوادگی صحیح باشد',
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const WithIconRow(
                        icon: Icons.warning_amber_rounded,
                        text:
                            'پس از ویرایش، نام و نام‌خانوادگی شما توسط کارشناسان ما بررسی خواهد شد',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              PrimaryFillButton(
                label: 'ذخیره تغییرات',
                onPressed: () {
                  onButtonPressed(addressController.text);
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
