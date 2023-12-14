import 'package:banx/core/utils/extension/build_context.dart';
import 'package:banx/core/utils/validators/password_validator.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final String? hint;
  final FormFieldSetter<String>? onSaved;
  final ValueChanged<String>? onFieldSubmitted;
  final TextEditingController? controller;
  final FormFieldValidator? validator;
  final FocusNode? focusNode;
  final bool autofocus;

  const PasswordTextField({
    super.key,
    this.hint,
    this.onSaved,
    this.onFieldSubmitted,
    this.controller,
    this.validator,
    this.focusNode,
    this.autofocus = false,
  });

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _passwordVisible = true;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: widget.autofocus,
      focusNode: widget.focusNode,
      controller: widget.controller,
      keyboardType: TextInputType.text,
      onSaved: widget.onSaved,
      onFieldSubmitted: widget.onFieldSubmitted,
      obscureText: !_passwordVisible,
      decoration: InputDecoration(
        labelText: widget.hint ?? 'رمز ورود',
        suffixIcon: IconButton(
          icon: Icon(
            _passwordVisible ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),
      ),
      validator: widget.validator ??
          (value) {
            return context.validateFiled(PasswordValidator(value));
          },
    );
  }
}
