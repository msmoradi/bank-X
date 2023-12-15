import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActionEntity {
  final String icon;
  final String title;
  final VoidCallback? actionClick;

  ActionEntity({required this.icon, required this.title, this.actionClick});
}

class BankActionRow extends StatelessWidget {
  final List<ActionEntity> actions;

  const BankActionRow({super.key, required this.actions});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...actions.map((item) {
              return RoundedAction(
                iconPath: item.icon,
                title: item.title,
                actionClick: item.actionClick,
              );
            }),
          ],
        ),
      ),
    );
  }
}

class RoundedAction extends StatelessWidget {
  final String iconPath;
  final String title;
  final VoidCallback? actionClick;

  const RoundedAction({
    super.key,
    required this.iconPath,
    required this.title,
    this.actionClick,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 24.0,
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: IconButton(
              icon: SvgPicture.asset(
                iconPath,
                width: 24.0,
                height: 24.0,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.onPrimary,
                  BlendMode.srcIn,
                ),
              ),
              onPressed: actionClick,
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
          ),
        ],
      ),
    );
  }
}
