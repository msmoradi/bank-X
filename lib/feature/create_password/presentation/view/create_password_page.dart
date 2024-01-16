import 'package:banx/core/designsystem/widgets/custom_keypad.dart';
import 'package:banx/core/designsystem/widgets/textfields/rounded_with_shadow_otp.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class CreatePasswordPage extends StatefulWidget {
  final Function(String) onNext;
  final Function(String) showMessage;

  const CreatePasswordPage({
    super.key,
    required this.onNext,
    required this.showMessage,
  });

  @override
  State<CreatePasswordPage> createState() => _CreatePasswordPageState();
}

class _CreatePasswordPageState extends State<CreatePasswordPage> {
  late final GlobalKey<FormState> formKey;
  late final TextEditingController pinController;

  void _onPrimaryTapped() async {
    if (formKey.currentState!.validate()) {
      widget.onNext(pinController.text);
    }
  }

  void _onKeyTapped(String key) {
    if (!mounted) return;
    setState(() {
      pinController.text += key;
    });
  }

  void _onBackspace() {
    if (!mounted) return;
    setState(() {
      pinController.delete();
    });
  }

  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormState>();
    pinController = TextEditingController();
  }

  @override
  void dispose() {
    pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        titleTextStyle: Theme.of(context).textTheme.headlineMedium,
        title: const Text("تعریف رمز ورود"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                    "رمز ورود به اپلیکیشن باید ۴ رقم باشد",
                  ),
                ),
                const SizedBox(height: 56),
                Form(
                  key: formKey,
                  child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: Center(
                      child: RoundedWithShadowInput(
                        obscureText: true,
                        autofocus: true,
                        controller: pinController,
                        useNativeKeyboard: false,
                        length: 4,
                        onCompleted: (password) {
                          if (formKey.currentState!.validate()) {
                            widget.onNext(password);
                          }
                        },
                        validator: (value) {
                          return value?.length == 4 ? null : 'رمز را وارد کنید';
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 56),
                CustomKeypad(
                  onKeyTapped: _onKeyTapped,
                  onBackspace: _onBackspace,
                  onPrimaryTapped: _onPrimaryTapped,
                  primaryIcon: Icons.arrow_circle_left_rounded,
                  isEnabled: pinController.text.length < 4,
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
