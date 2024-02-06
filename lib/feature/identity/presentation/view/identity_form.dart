import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/textfields/birthday_text_field.dart';
import 'package:banx/core/designsystem/widgets/textfields/national_id_text_field.dart';
import 'package:banx/core/designsystem/widgets/textfields/referral_code_text_field.dart';
import 'package:banx/feature/identity/presentation/bloc/identity_bloc.dart';
import 'package:banx/feature/identity/presentation/view/referral_bottom_sheet_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class IdentityForm extends StatefulWidget {
  final bool showLoading;
  final bool needReferralCode;
  final String phoneNumber;

  const IdentityForm({
    super.key,
    this.showLoading = false,
    required this.phoneNumber,
    required this.needReferralCode,
  });

  @override
  State<IdentityForm> createState() => _IdentityFormState();
}

class _IdentityFormState extends State<IdentityForm> {
  final formKey = GlobalKey<FormState>();
  final birthdayController = TextEditingController();
  final referralController = TextEditingController();
  String? _nationalId = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 16),
                Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NationalIdTextField(
                          autofocus: true,
                          onSaved: (value) {
                            setState(() {
                              _nationalId = value;
                            });
                          },
                        ),
                        const SizedBox(height: 16),
                        BirthdayTextField(
                          controller: birthdayController,
                          onTap: () async {
                            Jalali initialDateTime =
                                birthdayController.text.isEmpty
                                    ? Jalali(1375, 4)
                                    : jalaliFromString(birthdayController.text);

                            Jalali? picked = await showPersianDatePicker(
                              context: context,
                              initialDate: initialDateTime,
                              firstDate: Jalali(1300, 8),
                              lastDate: Jalali(1450, 9),
                              initialEntryMode:
                                  PersianDatePickerEntryMode.calendarOnly,
                              initialDatePickerMode: PersianDatePickerMode.year,
                            );

                            if(picked == null) return;

                            String formattedDate =
                                '${picked.year}/${picked.month}/${picked.day}';

                            birthdayController.text = formattedDate;
                          },
                        ),
                        const SizedBox(height: 16),
                        if (widget.needReferralCode)
                          ReferralCodeTextField(
                            needValidation: widget.needReferralCode,
                            controller: referralController,
                            onSuffixPressed: () {
                              showModalBottomSheet(
                                enableDrag: false,
                                showDragHandle: true,
                                isScrollControlled: true,
                                useSafeArea: true,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8.0),
                                      topRight: Radius.circular(8.0)),
                                ),
                                context: context,
                                builder: (context) =>
                                    const WithOutReferralBottomSheetContent(),
                              );
                            },
                          )
                      ],
                    )),
              ],
            ),
          ),
        ),
        PrimaryFillButton(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              formKey.currentState?.save();
              FocusManager.instance.primaryFocus?.unfocus();
              context.read<IdentityBloc>().add(
                    IdentitySubmitted(
                      phoneNumber: widget.phoneNumber,
                      nationalId: _nationalId!.toEnglishDigit(),
                      birthDate: birthdayController.text,
                      referral: referralController.text,
                    ),
                  );
            }
          },
          label: 'تأیید و ادامه',
          isLoading: widget.showLoading,
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  Jalali jalaliFromString(String x) {
    List<String> parts = x.split('/');
    int year = int.parse(parts[0]);
    int month = int.parse(parts[1]);
    int day = int.parse(parts[2]);
    return Jalali(year, month, day);
  }
}
