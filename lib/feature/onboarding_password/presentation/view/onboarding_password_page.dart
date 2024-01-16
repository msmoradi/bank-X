import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/info_text_row.dart';
import 'package:flutter/material.dart';

class OnboardingPasswordPage extends StatelessWidget {
  final Function() onNext;
  final Function(String) showMessage;

  const OnboardingPasswordPage({
    super.key,
    required this.onNext,
    required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        titleTextStyle: Theme.of(context).textTheme.headlineMedium,
        title: const Text("رمز ورود"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurfaceVariant,
                                  ),
                          "دسترسی امن و سریع به حساب",
                        ),
                      ),
                      const SizedBox(height: 80),
                      const InfoTextRowWidget(
                        iconAsset: 'assets/icons/unlock.svg',
                        title: 'تعریف رمز ۴ رقمی',
                        subtitle:
                            'برای دسترسی به حساب خود در بنکس، باید یک رمز ورود ۴ رقمی تعریف کنید',
                      ),
                      const SizedBox(height: 30),
                      const InfoTextRowWidget(
                        iconAsset: 'assets/icons/faceid.svg',
                        title: 'بایومتریک',
                        subtitle:
                            'با فعال‌سازی FaceID یا Fingerprint تلفن همراه خود از ویژگی ورود سریع با سنسور بایومتریک استفاده کنید',
                      ),
                      const SizedBox(height: 50),
                      Image.asset(
                        "assets/images/lock_img.png",
                        fit: BoxFit.fitWidth,
                        width: double.infinity,
                        alignment: Alignment.center,
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
              PrimaryFillButton(
                label: 'تعریف رمز',
                onPressed: onNext,
              ),
              const SizedBox(height: 16)
            ],
          ),
        ),
      ),
    );
  }
}
