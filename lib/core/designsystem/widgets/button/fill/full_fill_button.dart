import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class PrimaryFillButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final Widget? icon;
  final bool isLoading;
  final bool fillWidth;
  final ButtonHeight buttonHeight;
  final IconAlignment iconAlignment;

  const PrimaryFillButton({
    super.key,
    this.onPressed,
    required this.label,
    this.icon,
    this.buttonHeight = ButtonHeight.medium,
    this.iconAlignment = IconAlignment.end,
    this.isLoading = false,
    this.fillWidth = true,
  });

  @override
  Widget build(BuildContext context) {
    final content = isLoading
        ? LoadingAnimationWidget.waveDots(
            color: Theme.of(context).colorScheme.onPrimary,
            size: 50.0,
          )
        : Text(
            label,
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
          );
    return SizedBox(
      width: fillWidth ? Size.infinite.width : null,
      height: buttonHeight == ButtonHeight.small ? 32 : 48,
      child: icon != null
          ? FilledButton.icon(
              iconAlignment: iconAlignment,
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                backgroundColor: Theme.of(context)
                    .colorScheme
                    .primary, // This is what you need!
              ),
              onPressed: isLoading ? null : onPressed,
              icon: isLoading ? null : icon,
              label: content,
            )
          : FilledButton(
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                backgroundColor: Theme.of(context)
                    .colorScheme
                    .primary, // This is what you need!
              ),
              onPressed: isLoading ? null : onPressed,
              child: content,
            ),
    );
  }
}

enum ButtonHeight { small, medium }
