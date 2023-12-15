import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/components/with_icon_row.dart';
import 'package:flutter/material.dart';

class CardPersonalizationBottomSheet extends StatelessWidget {
  final Function(String firstName, String lastName) onButtonPressed;
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;

  const CardPersonalizationBottomSheet({
    super.key,
    required this.onButtonPressed,
    required this.firstNameController,
    required this.lastNameController,
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
                controller: firstNameController,
                onFieldSubmitted: (text) {},
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  labelText: "نام درج شده روی کارت",
                ),
                validator: (value) {
                  return value?.isNotEmpty == true ? null : 'نام باید پر شود';
                },
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                autofocus: true,
                controller: lastNameController,
                onFieldSubmitted: (text) {},
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  labelText: "نام‌خانوادگی درج شده روی کارت",
                ),
                validator: (value) {
                  return value?.isNotEmpty == true
                      ? null
                      : 'نام خانوادگی باید پر شود';
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
                  onButtonPressed(
                      firstNameController.text, lastNameController.text);
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
