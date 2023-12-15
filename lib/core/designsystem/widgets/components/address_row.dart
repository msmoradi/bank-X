import 'package:flutter/material.dart';

class AddressRow extends StatelessWidget {
  final Function()? onEditPressed;

  final String address;

  const AddressRow({
    super.key,
    required this.address,
    this.onEditPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.max, children: [
      Icon(
        size: 24.0,
        Icons.location_on_outlined,
        color: Theme.of(context).colorScheme.primary,
      ),
      const SizedBox(width: 16.0),
      Expanded(
        child: Text(
          address,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Theme.of(context).colorScheme.primary),
        ),
      ),
      const SizedBox(width: 16.0),
      IconButton(
        onPressed: onEditPressed,
        icon: Icon(
          size: 24.0,
          onEditPressed != null
              ? Icons.edit_outlined
              : Icons.arrow_forward_ios_rounded,
          color: Theme.of(context).colorScheme.primary,
        ),
      )
    ]);
  }
}
