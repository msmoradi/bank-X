import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/textfields/birthday_text_field.dart';
import 'package:banx/feature/identity_correction/presentation/bloc/identity_correction_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

class IdentityCorrectionForm extends StatefulWidget {
  final bool showLoading;
  final String phoneNumber;

  const IdentityCorrectionForm({
    super.key,
    this.showLoading = false,
    required this.phoneNumber,
  });

  @override
  State<IdentityCorrectionForm> createState() => _IdentityCorrectionFormState();
}

class _IdentityCorrectionFormState extends State<IdentityCorrectionForm> {
  final formKey = GlobalKey<FormState>();
  final birthdayController = TextEditingController();

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

                            if (picked == null) return;

                            String formattedDate =
                                '${picked.year}/${picked.month}/${picked.day}';

                            birthdayController.text = formattedDate;
                          },
                        ),
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
              context.read<IdentityCorrectionBloc>().add(
                    IdentityCorrectionSubmitted(
                      birthDate: birthdayController.text,
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
