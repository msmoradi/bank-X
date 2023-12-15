import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoldTransactionIcon extends StatelessWidget {
  final bool isInput;

  const GoldTransactionIcon({
    super.key,
    required this.isInput,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20.0,
      backgroundColor: isInput
          ? Theme.of(context).colorScheme.secondaryContainer
          : Theme.of(context).colorScheme.surfaceContainerHigh,
      child: SvgPicture.asset(
        isInput
            ? 'assets/icons/gold.svg'
            : 'assets/icons/gold.svg',
        colorFilter: ColorFilter.mode(
          isInput
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.onSurfaceVariant,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
