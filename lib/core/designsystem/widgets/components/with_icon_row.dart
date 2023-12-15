import 'package:flutter/material.dart';

class WithIconRow extends StatelessWidget {
  final String text;

  final IconData icon;

  const WithIconRow({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon),
        const SizedBox(width: 12),
        Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.titleMedium,
            ))
      ],
    );
  }
}
