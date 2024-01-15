import 'dart:async';

import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/button/fill/full_outline_button.dart';
import 'package:banx/core/designsystem/widgets/textfields/rounded_with_shadow_otp.dart';
import 'package:banx/core/designsystem/widgets/textfields/sms_retriever_impl.dart';
import 'package:banx/feature/verify_otp/presentation/bloc/verify_otp_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_auth/smart_auth.dart';

class VerifyOtpContent extends StatefulWidget {
  final String phoneNumber;
  final int codeLength;
  final int expiresIn;
  final bool showLoading;
  final String? errorMessage;

  const VerifyOtpContent({
    super.key,
    required this.phoneNumber,
    required this.codeLength,
    required this.showLoading,
    required this.expiresIn,
    this.errorMessage,
  });

  @override
  State<VerifyOtpContent> createState() => _VerifyOtpContentState();
}

class _VerifyOtpContentState extends State<VerifyOtpContent> {
  final formKey = GlobalKey<FormState>();
  late final TextEditingController pinController;
  late final SmsRetrieverImpl smsRetrieverImpl;

  late Timer _timer;
  int _start = 60; // Initial countdown value in seconds
  bool _isButtonEnabled = false; // To control the resend button state

  void _startTimer() {
    _isButtonEnabled = false;
    setState(() {
      _start = widget.expiresIn; // Reset countdown to 60 seconds
    });
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            _isButtonEnabled = true;
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  void _onOTPComplete(String otp) {
    if (formKey.currentState!.validate()) {
      context.read<VerifyOtpBloc>().add(
            VerifyOtpSubmitted(
              phoneNumber: widget.phoneNumber,
              otp: otp,
              codeLength: widget.codeLength,
            ),
          );
    }
  }

  void _onSubmitTapped() {
    context.read<VerifyOtpBloc>().add(
          VerifyOtpSubmitted(
            phoneNumber: widget.phoneNumber,
            otp: pinController.value.text,
            codeLength: widget.codeLength,
          ),
        );
  }

  @override
  void dispose() {
    pinController.dispose();
    smsRetrieverImpl.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    smsRetrieverImpl = SmsRetrieverImpl(SmartAuth());
    pinController = TextEditingController();
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        centerTitle: false,
        automaticallyImplyLeading: false,
        titleTextStyle: Theme.of(context).textTheme.headlineMedium,
        title: const Text("تأیید تلفن همراه"),
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
                      const SizedBox(height: 16),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text:
                                'کد ${widget.codeLength} رقمی ارسال شده به شماره',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary),
                            children: [
                              TextSpan(
                                text: ' ${widget.phoneNumber} ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'را وارد کنید',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary),
                              ),
                            ]),
                      ),
                      const SizedBox(height: 32),
                      Form(
                        key: formKey,
                        child: Directionality(
                          textDirection: TextDirection.ltr,
                          child: Center(
                            child: RoundedWithShadowInput(
                              controller: pinController,
                              readOnly: widget.showLoading,
                              errorText: widget.errorMessage,
                              smsRetriever: smsRetrieverImpl,
                              forceErrorState: widget.errorMessage != null,
                              autofocus: true,
                              validator: (value) {
                                return value?.length == widget.codeLength
                                    ? null
                                    : 'کد پیامک شده را وارد نمایید';
                              },
                              length: widget.codeLength,
                              onCompleted: _onOTPComplete,
                              onSubmitted: _onOTPComplete,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              PrimaryFillButton(
                onPressed: _onSubmitTapped,
                label: 'تأیید و ادامه',
                isLoading: widget.showLoading,
              ),
              const SizedBox(height: 16),
              _isButtonEnabled
                  ? PrimaryOutlineButton(
                      onPressed: () {
                        _startTimer();
                        context
                            .read<VerifyOtpBloc>()
                            .add(ResendCode(phoneNumber: widget.phoneNumber));
                      },
                      label: "ارسال مجدد کد",
                    )
                  : PrimaryFillButton(
                      onPressed: null,
                      label: "ارسال دوباره کد | $_start ثانیه",
                    ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
