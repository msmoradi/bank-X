import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DiamondTransactionIcon extends StatelessWidget {
  final bool isInput;

  const DiamondTransactionIcon({
    super.key,
    required this.isInput,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20.0,
      backgroundColor: isInput
          ? Color(0xffC5CBE2)
          : Theme.of(context).colorScheme.surfaceContainerHigh,
      child: SvgPicture.asset(
        'assets/icons/diamond-blank.svg',
        colorFilter: ColorFilter.mode(
          Theme.of(context).colorScheme.primary,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
