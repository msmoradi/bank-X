import 'package:flutter/material.dart';

class BirthdayTextField extends StatefulWidget {
  final FormFieldSetter<String>? onSaved;
  final ValueChanged<String>? onFieldSubmitted;
  final TextEditingController? controller;
  final GestureTapCallback? onTap;

  const BirthdayTextField({
    super.key,
    this.onSaved,
    this.onFieldSubmitted,
    this.controller,
    this.onTap,
  });

  @override
  State<BirthdayTextField> createState() => _BirthdayTextFieldState();
}

class _BirthdayTextFieldState extends State<BirthdayTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: widget.onTap,
      controller: widget.controller,
      onSaved: widget.onSaved,
      readOnly: true,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.calendar_today_outlined),
        labelText: "تاریخ تولد",
      ),
    );
  }
}
