import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/textfields/national_id_text_field.dart';
import 'package:banx/feature/national_serial/presentation/bloc/national_serial_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class NationalSerialContent extends StatefulWidget {
  final bool showLoading;

  const NationalSerialContent({super.key, required this.showLoading});

  @override
  State<NationalSerialContent> createState() => _NationalSerialContentState();
}

class _NationalSerialContentState extends State<NationalSerialContent> {
  final _formKey = GlobalKey<FormState>();
  String? _nationalSerial = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        titleTextStyle: Theme.of(context).textTheme.headlineMedium,
        title: const Text('سریال کارت ملی'),
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
                          'سریال پشت کارت ملی خود را بدقت وارد کنید',
                        ),
                      ),
                      const SizedBox(height: 16),
                      Form(
                        key: _formKey,
                        child: NationalIdTextField(
                          autofocus: true,
                          onSaved: (value) {
                            _nationalSerial = value;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              PrimaryFillButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                    FocusManager.instance.primaryFocus?.unfocus();
                    context.read<NationalSerialBloc>().add(
                        CheckNationalSerialSubmitted(
                            _nationalSerial!.toEnglishDigit()));
                  }
                },
                iconAlignment: IconAlignment.start,
                icon: SvgPicture.asset(
                  'assets/icons/search.svg',
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.onPrimary,
                    BlendMode.srcIn,
                  ),
                ),
                label: 'بررسی کد پستی',
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
