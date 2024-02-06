import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/components/with_icon_row.dart';
import 'package:flutter/material.dart';

class WithOutReferralBottomSheetContent extends StatelessWidget {
  const WithOutReferralBottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AspectRatio(
            aspectRatio: 2.0,
            child: Image.asset(
              "assets/images/referral_frame.png",
              fit: BoxFit.cover,
              width: double.infinity,
              alignment: Alignment.center,
            ),
          ),
          const SizedBox(height: 16),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              style: Theme.of(context).textTheme.headlineSmall,
              'دریافت دعوتنامه',
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'حضور در بنکس فقط به دعوت اعضاء آن امکان پذیر است، روش‌های مختلفی برای دریافت دعوتنامه وجود دارد. ',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 32),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'روش‌های پیشنهادی برای دریافت دعوتنامه',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const SizedBox(height: 16),
          const WithIconRow(
            icon: Icons.connecting_airports_sharp,
            text: 'جستجو بین دوستان و آشنایان خود',
          ),
          const SizedBox(height: 16),
          const WithIconRow(
            icon: Icons.connecting_airports_sharp,
            text: 'انتشار درخواست دعوتنامه در شبکه‌های اجتماعی',
          ),
          const SizedBox(height: 16),
          const WithIconRow(
            icon: Icons.connecting_airports_sharp,
            text: 'ثبت‌نام در لیست انتظار برای دریافت دعوتنامه',
          ),
          const SizedBox(height: 100),
          PrimaryFillButton(
            label: 'متوجه شدم',
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
