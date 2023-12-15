import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SaffronTransactionIcon extends StatelessWidget {
  final bool isInput;

  const SaffronTransactionIcon({
    super.key,
    required this.isInput,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20.0,
      backgroundColor: isInput
          ? Color(0xffFFD4A8)
          : Theme.of(context).colorScheme.surfaceContainerHigh,
      child: SvgPicture.asset(
        isInput
            ? 'assets/icons/arrow-circle-down-left.svg'
            : 'assets/icons/arrow-circle-up-right.svg',
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
