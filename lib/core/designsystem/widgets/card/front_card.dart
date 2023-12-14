import 'package:flutter/material.dart';

class FrontCard extends StatelessWidget {
  final double cardHeight;
  final Widget text;

  const FrontCard({
    super.key,
    required this.cardHeight,
    required this.text,
  });

  String convertName(String input) {
    List<String> parts = input.split(' ');

    // If there are exactly two parts, join them with a newline and spaces
    if (parts.length == 2) {
      return parts.join('\n ');
    }

    // If there are more than two parts, join the first part and the rest with a newline and spaces
    if (parts.length > 2) {
      String firstPart = parts.removeAt(0);
      String remainingParts = parts.join(' ');
      return '$firstPart\n $remainingParts';
    }

    // If there is only one part, return the original input
    return input;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: cardHeight * 0.12,
          left: cardHeight * 0.12,
          child: Image.asset(
            'assets/images/x1_white.png',
            width: cardHeight * 0.26,
            height: cardHeight * 0.26,
          ),
        ),
        Positioned(
          top: cardHeight * 0.26,
          right: cardHeight * 0.21,
          child: Image.asset(
            'assets/images/chip.png',
            width: cardHeight * 0.17,
            height: cardHeight * 0.17,
          ),
        ),
        Positioned(
          bottom: cardHeight * 0.12,
          left: cardHeight * 0.12,
          child: text,
        ),
      ],
    );
  }
}
