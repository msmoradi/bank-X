import 'package:banx/core/utils/extension/build_context.dart';
import 'package:banx/core/utils/validators/national_id_number_validator.dart';
import 'package:flutter/material.dart';

class NationalIdTextField extends StatefulWidget {
  final FormFieldSetter<String>? onSaved;
  final ValueChanged<String>? onFieldSubmitted;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool autofocus;

  const NationalIdTextField(
      {super.key,
      this.onSaved,
      this.onFieldSubmitted,
      this.controller,
      this.focusNode,
      this.autofocus = false});

  @override
  State<NationalIdTextField> createState() => _NationalIdTextFieldState();
}

class _NationalIdTextFieldState extends State<NationalIdTextField> {
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
        prefixIcon: Icon(Icons.person_outline),
        labelText: "کدملی ۱۰ رقمی",
      ),
      validator: (value) {
        return context.validateFiled(NationalIdValidator(value));
      },
    );
  }
}
