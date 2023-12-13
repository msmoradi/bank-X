import 'package:flutter/material.dart';

class PrimaryOutlineButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final String label;
  final IconData? icon;
  final bool isLoading;
  final bool fillWidth;

  const PrimaryOutlineButton({
    super.key,
    this.onPressed,
    required this.label,
    this.icon,
    this.isLoading = false,
    this.fillWidth = true,
  });

  @override
  State<PrimaryOutlineButton> createState() => _PrimaryFillButtonState();
}

class _PrimaryFillButtonState extends State<PrimaryOutlineButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.fillWidth ? Size.infinite.width : null,
      child: widget.isLoading
          ? OutlinedButton(
              onPressed: () {},
              child: const CircularProgressIndicator(),
            )
          : widget.icon != null
              ? OutlinedButton.icon(
                  onPressed: widget.onPressed,
                  icon: Icon(widget.icon),
                  label: Text(widget.label),
                )
              : OutlinedButton(
                  onPressed: widget.onPressed,
                  child: Text(widget.label),
                ),
    );
  }
}
