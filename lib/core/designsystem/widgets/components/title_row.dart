import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TitleRow extends StatelessWidget {
  final String title;

  const TitleRow({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.primary),
    );
  }
}
