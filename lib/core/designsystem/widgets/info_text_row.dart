import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoTextRowWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String iconAsset;
  final Color? background;

  const InfoTextRowWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.iconAsset,
    this.background,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 23,
          backgroundColor:
              background ?? Theme.of(context).colorScheme.onSurface,
          child: SvgPicture.asset(
            iconAsset,
            colorFilter: ColorFilter.mode(
              Theme.of(context).colorScheme.surface,
              BlendMode.srcIn,
            ),
            width: 24,
            height: 24,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
