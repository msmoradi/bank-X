import 'package:banx/core/designsystem/widgets/bottomsheet/deposit_bottom_sheet_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum DepositType {
  rialDeposit(
      title: 'سپرده ریالء',
      iconPath: 'assets/images/rial_banx.png',
      unit: 'ریالء'),
  goldDeposit(
      title: 'سپرده طلا',
      iconPath: 'assets/images/lite-coin-1.png',
      unit: 'گرم'),
  saffronDeposit(
      title: 'سپرده زعفران',
      iconPath: 'assets/images/saffron_banx.png',
      unit: 'گرم'),
  diamondDeposit(
      title: 'سپرده الماس',
      iconPath: 'assets/images/diamond_banx.png',
      unit: 'گرم');

  final String title;
  final String unit;
  final String iconPath;

  const DepositType(
      {required this.title, required this.iconPath, required this.unit});
}

class DropdownChipWidget extends StatelessWidget {
  final DepositType type;
  final String title;
  final Function(DepositType) onSelectTypeEvent;

  const DropdownChipWidget({
    Key? key,
    required this.type,
    required this.onSelectTypeEvent,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final result = await showModalBottomSheet<DepositType>(
          showDragHandle: true,
          context: context,
          builder: (BuildContext context) {
            return DepositBottomSheetContent(
              title: title,
              initialType: type,
              onTypeSelected: (type) {
                Navigator.pop(context, type);
              },
            );
          },
        );
        if (result != null) {
          onSelectTypeEvent(result);
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border:
              Border.all(color: Theme.of(context).colorScheme.surfaceContainer),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Circular Image
            SvgPicture.asset(
              width: 16,
              height: 16,
              'assets/icons/chevron-down.svg',
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.surfaceTint,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              type.title,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.surfaceTint),
            ),
            const SizedBox(width: 8),
            Image.asset(
              width: 24,
              height: 24,
              type.iconPath,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
