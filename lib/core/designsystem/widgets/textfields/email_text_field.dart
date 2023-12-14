import 'package:banx/core/utils/extension/build_context.dart';
import 'package:banx/core/utils/validators/email_validator.dart';
import 'package:flutter/material.dart';

class EmailTextField extends StatefulWidget {
  final FormFieldSetter<String>? onSaved;
  final ValueChanged<String>? onFieldSubmitted;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool autofocus;

  const EmailTextField({
    super.key,
    this.onSaved,
    this.onFieldSubmitted,
    this.controller,
    this.focusNode,
    this.autofocus = false
  });

  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: widget.autofocus,
      focusNode: widget.focusNode,
      controller: widget.controller,
      onSaved: widget.onSaved,
      onFieldSubmitted: widget.onFieldSubmitted,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'ایمیل',
      ),
      validator: (value) {
        return context.validateFiled(EmailValidator(value));
      },
    );
  }
}
