import 'package:banx/core/designsystem/widgets/components/glass_morphism.dart';
import 'package:flutter/material.dart';

class GlassRow extends StatelessWidget {
  final int currentPageIndex;
  final String title;
  final String subtitle;

  GlassRow(
      {super.key,
      required this.currentPageIndex,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return GlassMorphism(
      blur: 20,
      color: Theme.of(context).colorScheme.surface,
      opacity: 0.2,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Theme.of(context).colorScheme.primary),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
