import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/feature/card_activation/presentation/bloc/card_activation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardActivationContent extends StatefulWidget {
  final CardActivationState state;

  const CardActivationContent({super.key, required this.state});

  @override
  State<CardActivationContent> createState() => _CardActivationContentState();
}

class _CardActivationContentState extends State<CardActivationContent> {
  final _formKey = GlobalKey<FormState>();
  late final FocusNode focusNode;

  late TextEditingController _cardNumberController;

  @override
  void initState() {
    super.initState();
    _cardNumberController = TextEditingController();
  }

  @override
  void dispose() {
    _cardNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        centerTitle: false,
        automaticallyImplyLeading: false,
        titleTextStyle: Theme.of(context).textTheme.headlineMedium,
        title: const Text('فعال‌سازی کارت'),
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
                            TextFormField(
                              controller: _cardNumberController,
                              autofocus: true,
                              keyboardType: TextInputType.number,
                              maxLines: 1,
                              decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.credit_card_outlined),
                                  labelText: "شماره ۱۶ رقمی کارت"),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              PrimaryFillButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                    FocusManager.instance.primaryFocus?.unfocus();
                    context.read<CardActivationBloc>().add(
                        CardActivationSubmitted(_cardNumberController.text));
                  }
                },
                label: 'تأیید و ادامه',
                isLoading: widget.state is CardActivationInProgress,
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
