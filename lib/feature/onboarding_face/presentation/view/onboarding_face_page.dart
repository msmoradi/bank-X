import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/info_text_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingFacePage extends StatelessWidget {
  final Function() onNext;
  final Function(String) showMessage;

  const OnboardingFacePage({
    super.key,
    required this.onNext,
    required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        centerTitle: false,
        automaticallyImplyLeading: false,
        titleTextStyle: Theme.of(context).textTheme.headlineMedium,
        title: const Text("تشخیص چهره"),
      ),
      body: Stack(alignment: Alignment.bottomRight, children: [
        Image.asset(
          "assets/images/liveness_detection.png",
          fit: BoxFit.fitWidth,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        SafeArea(
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
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSurfaceVariant,
                                ),
                            "جهت احراز هویت دقیق به نکات زیر دقت کنید",
                          ),
                        ),
                        const SizedBox(height: 80),
                        const InfoTextRowWidget(
                          iconAsset: 'assets/icons/faceid.svg',
                          title: 'حرکت چهره',
                          subtitle:
                              'سر خود را مقابل دوربین به چپ و راست حرکت دهید تا پیام تأیید روی صفحه نمایش داده شود',
                        ),
                        const SizedBox(height: 30),
                        const InfoTextRowWidget(
                          iconAsset: 'assets/icons/bulb-on.svg',
                          title: 'نور محیط و پس‌زمینه',
                          subtitle:
                              'در زمان ثبت ویدئو، لطفا نور محیط، کافی و پس‌زمینه شما سفید باشد',
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                ),
                PrimaryFillButton(
                  iconAlignment: IconAlignment.start,
                  icon: SvgPicture.asset(
                    'assets/icons/thumb-up.svg',
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.onPrimary,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: 'متوجه شدم',
                  onPressed: onNext,
                ),
                const SizedBox(height: 16)
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
