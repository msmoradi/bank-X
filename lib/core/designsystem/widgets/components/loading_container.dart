import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingContainer extends StatelessWidget {
  final bool showLoading;
  final Widget content;

  const LoadingContainer(
      {super.key, required this.showLoading, required this.content});

  @override
  Widget build(BuildContext context) {
    return showLoading
        ? Center(
            child: LoadingAnimationWidget.waveDots(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
              size: 80.0,
            ),
          )
        : content;
  }
}
