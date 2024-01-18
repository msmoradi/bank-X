import 'package:banx/core/designsystem/widgets/components/loading_container.dart';
import 'package:banx/core/designsystem/widgets/custom_keypad.dart';
import 'package:banx/core/designsystem/widgets/textfields/rounded_with_shadow_otp.dart';
import 'package:banx/feature/verify_password/presentation/bloc/verify_password_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

class VerifyPasswordContent extends StatefulWidget {
  final bool showLoading;
  final bool showBiometric;
  final String firstName;
  final String photoUrl;
  final Function(String) showMessage;

  const VerifyPasswordContent({
    super.key,
    required this.showLoading,
    required this.showMessage,
    required this.showBiometric,
    required this.firstName,
    required this.photoUrl,
  });

  @override
  _VerifyPasswordContentState createState() => _VerifyPasswordContentState();
}

class _VerifyPasswordContentState extends State<VerifyPasswordContent> {
  late final TextEditingController pinController;

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
        forceMaterialTransparency: true,
        centerTitle: false,
        toolbarHeight: 0.0,
        automaticallyImplyLeading: false,
      ),
      body: LoadingContainer(
        showLoading: widget.showLoading,
        content: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 16.0,
                        ),
                        if (widget.photoUrl.isNotEmpty)
                          CircleAvatar(
                            radius: 40.0,
                            backgroundImage: NetworkImage(widget.photoUrl),
                          ),
                        const SizedBox(height: 16),
                        Text(
                          "روز بخیر، ${widget.firstName}",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                        ),
                        const SizedBox(height: 58),
                        Directionality(
                          textDirection: TextDirection.ltr,
                          child: Center(
                            child: RoundedWithShadowInput(
                              obscureText: true,
                              controller: pinController,
                              useNativeKeyboard: false,
                              length: 4,
                              onCompleted: (password) {
                                context.read<VerifyPasswordBloc>().add(
                                      VerifyPasswordSubmitted(
                                        password: password,
                                      ),
                                    );
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                        CustomKeypad(
                          onKeyTapped: _onKeyTapped,
                          onBackspace: _onBackspace,
                          onPrimaryTapped: () =>
                              context.read<VerifyPasswordBloc>().add(
                                    const BiometricsSubmitted(),
                                  ),
                          primaryIcon: widget.showBiometric
                              ? Icons.fingerprint_rounded
                              : null,
                          isEnabled: pinController.text.length < 4,
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  "رمز ورود خود را فراموش کردید؟",
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
                const SizedBox(
                  height: 16.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
