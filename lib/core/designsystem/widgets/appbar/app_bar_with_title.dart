import 'package:flutter/material.dart';

class AppBarWithTitle extends StatelessWidget {
  final String title;

  const AppBarWithTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          style: Theme.of(context)
              .textTheme
              .headlineMedium,
          title,
        ),
      ),
    );
  }
}
