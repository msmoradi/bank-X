import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/components/loading_container.dart';
import 'package:banx/core/designsystem/widgets/info_text_row.dart';
import 'package:banx/core/domain/entities/kyc_status_entity.dart';
import 'package:banx/feature/kyc_status/mapper/kyc_state_mapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KycStatusContent extends StatelessWidget {
  final Function() onActionClick;
  final Function(String) showMessage;
  final bool showLoading;
  final String actionTitle;
  final String actionIcon;
  final IconAlignment iconAlignment;
  final KYCStatusEntity identity;
  final KYCStatusEntity phoneNumber;
  final KYCStatusEntity face;
  final KYCStatusEntity sayah;

  const KycStatusContent({
    super.key,
    required this.onActionClick,
    required this.showMessage,
    required this.actionTitle,
    required this.actionIcon,
    required this.iconAlignment,
    required this.showLoading,
    required this.identity,
    required this.phoneNumber,
    required this.face,
    required this.sayah,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        titleTextStyle: Theme.of(context).textTheme.headlineMedium,
        title: const Text("احراز هویت و افتتاح حساب"),
      ),
      body: LoadingContainer(
        showLoading: showLoading,
        content: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                                "استعلام از بانک مرکزی جهت افتتاح حساب در حال انجام است",
                              ),
                            ),
                            const SizedBox(height: 40),
                            InfoTextRowWidget(
                              iconAsset: identity.status.toIconAssets(),
                              title: identity.title,
                              subtitle: identity.description,
                              background:
                                  identity.status.toBackgroundColor(context),
                            ),
                            const SizedBox(height: 30),
                            InfoTextRowWidget(
                              iconAsset: phoneNumber.status.toIconAssets(),
                              title: phoneNumber.title,
                              subtitle: phoneNumber.description,
                              background:
                                  phoneNumber.status.toBackgroundColor(context),
                            ),
                            const SizedBox(height: 30),
                            InfoTextRowWidget(
                              iconAsset: face.status.toIconAssets(),
                              title: face.title,
                              subtitle: face.description,
                              background:
                                  face.status.toBackgroundColor(context),
                            ),
                            const SizedBox(height: 30),
                            InfoTextRowWidget(
                              iconAsset: sayah.status.toIconAssets(),
                              title: sayah.title,
                              subtitle: sayah.description,
                              background:
                                  sayah.status.toBackgroundColor(context),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 64),
                      Image.asset(
                        "assets/images/kyc_status.png",
                        fit: BoxFit.fitWidth,
                        width: double.infinity,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: PrimaryFillButton(
                  label: actionTitle,
                  iconAlignment: iconAlignment,
                  icon: SvgPicture.asset(
                    "assets/icons/$actionIcon.svg",
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.onPrimary,
                      BlendMode.srcIn,
                    ),
                  ),
                  onPressed: onActionClick,
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
