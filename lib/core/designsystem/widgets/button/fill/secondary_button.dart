import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SecondaryFillButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final Widget? icon;
  final bool isLoading;
  final bool fillWidth;

  const SecondaryFillButton({
    super.key,
    this.onPressed,
    required this.label,
    this.icon,
    this.isLoading = false,
    this.fillWidth = true,
  });

  @override
  Widget build(BuildContext context) {
    final content = isLoading
        ? LoadingAnimationWidget.waveDots(
            color: Theme.of(context).colorScheme.onSecondaryContainer,
            size: 50.0,
          )
        : Text(
            label,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSecondaryContainer),
          );
    return SizedBox(
      width: fillWidth ? Size.infinite.width : null,
      child: icon != null
          ? FilledButton.icon(
              style: FilledButton.styleFrom(
                backgroundColor: Theme.of(context)
                    .colorScheme
                    .secondaryContainer, // This is what you need!
              ),
              onPressed: isLoading ? null : onPressed,
              icon: isLoading ? null : icon,
              label: content,
            )
          : FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Theme.of(context)
                    .colorScheme
                    .secondaryContainer, // This is what you need!
              ),
              onPressed: isLoading ? null : onPressed,
              child: content,
            ),
    );
  }
}
