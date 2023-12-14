import 'package:banx/core/utils/extension/build_context.dart';
import 'package:flutter/material.dart';

import '../../../utils/validators/phone_number_validator.dart';

class PhoneNumberTextField extends StatefulWidget {
  final FormFieldSetter<String>? onSaved;
  final ValueChanged<String>? onFieldSubmitted;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool autofocus;

  const PhoneNumberTextField({
    super.key,
    this.onSaved,
    this.onFieldSubmitted,
    this.controller,
    this.focusNode,
    this.autofocus = false,
  });

  @override
  State<PhoneNumberTextField> createState() => _PhoneNumberTextFieldState();
}

class _PhoneNumberTextFieldState extends State<PhoneNumberTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: widget.autofocus,
      focusNode: widget.focusNode,
      controller: widget.controller,
      onSaved: widget.onSaved,
      onFieldSubmitted: widget.onFieldSubmitted,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.phone_iphone),
        labelText: "شماره تلفن همراه",
      ),
      validator: (value) {
        return context.validateFiled(PhoneNumberValidator(value));
      },
    );
  }
}
