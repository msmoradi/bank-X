import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/textfields/phone_number_text_field.dart';
import 'package:banx/feature/phone/presentation/bloc/phone_bloc.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class PhoneContent extends StatefulWidget {
  final bool showLoading;

  const PhoneContent({super.key, required this.showLoading});

  @override
  State<PhoneContent> createState() => _PhoneContentState();
}

class _PhoneContentState extends State<PhoneContent> {
  final _formKey = GlobalKey<FormState>();
  late final FocusNode focusNode;

  String? phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        centerTitle: false,
        automaticallyImplyLeading: false,
        titleTextStyle: Theme.of(context).textTheme.headlineMedium,
        title: const Text('شماره تلفن همراه'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSurfaceVariant),
                          'شماره تلفن همراه به نام خودتان باشد',
                        ),
                      ),
                      const SizedBox(height: 20),
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PhoneNumberTextField(
                              autofocus: true,
                              onSaved: (value) {
                                phoneNumber = value;
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: 'با ثبت نام در بنکس، با ',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.primary),
                        children: [
                          TextSpan(
                            text: 'شرایط استفاده',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {},
                          ),
                          TextSpan(
                            text: ' و ',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary),
                          ),
                          TextSpan(
                            text: 'سیاست حفظ حریم خصوصی',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {},
                          ),
                          TextSpan(
                            text: ' ما موافقت می‌کنید',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary),
                          )
                        ]),
                  )),
              const SizedBox(height: 24),
              PrimaryFillButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                    FocusManager.instance.primaryFocus?.unfocus();
                    context
                        .read<PhoneBloc>()
                        .add(PhoneSubmitted(phoneNumber!.toEnglishDigit()));
                  }
                },
                label: 'تأیید و ادامه',
                isLoading: widget.showLoading,
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
