import 'package:flutter/material.dart';

class SpecialText extends StatelessWidget {
  const SpecialText(this.text, {super.key, this.color, this.size});

  final String text;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
    );
  }
}
