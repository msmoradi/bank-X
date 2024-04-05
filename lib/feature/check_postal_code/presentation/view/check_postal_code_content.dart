import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/textfields/postal_code_text_field.dart';
import 'package:banx/feature/check_postal_code/presentation/bloc/check_postal_code_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class CheckPostalCodeContent extends StatefulWidget {
  final bool showLoading;

  const CheckPostalCodeContent({super.key, required this.showLoading});

  @override
  State<CheckPostalCodeContent> createState() => _CheckPostalCodeContentState();
}

class _CheckPostalCodeContentState extends State<CheckPostalCodeContent> {
  final _formKey = GlobalKey<FormState>();
  String? _postalCode = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        centerTitle: false,
        automaticallyImplyLeading: false,
        titleTextStyle: Theme.of(context).textTheme.headlineMedium,
        title: const Text('آدرس دریافت کارت'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 16),
                    Form(
                      key: _formKey,
                      child: PostalCodeTextField(
                        autofocus: true,
                        onSaved: (value) {
                          _postalCode = value;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              PrimaryFillButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                    FocusManager.instance.primaryFocus?.unfocus();
                    context
                        .read<CheckPostalCodeBloc>()
                        .add(CheckPostalCodeSubmitted(_postalCode!.toEnglishDigit()));
                  }
                },
                iconAlignment: IconAlignment.start,
                icon: SvgPicture.asset(
                  'assets/icons/search.svg',
                  colorFilter: ColorFilter.mode(
                    Theme
                        .of(context)
                        .colorScheme
                        .onPrimary,
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
