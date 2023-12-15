import 'package:flutter/material.dart';

class DotIndicatorRow extends StatelessWidget {
  final int currentPageIndex;
  final int numberOfDotIndicator;

  const DotIndicatorRow({
    super.key,
    required this.currentPageIndex,
    this.numberOfDotIndicator = 3,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: List.generate(numberOfDotIndicator, (index) {
        return _indicator(currentPageIndex == index, context);
      }),
    );
  }

  Widget _indicator(bool isActive, BuildContext context) {
    return Container(
      height: 10,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        height: 8.0,
        width: 8.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isActive
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.onPrimaryContainer,
        ),
      ),
    );
  }
}
