import 'package:banx/core/utils/extension/build_context.dart';
import 'package:banx/core/utils/validators/postal_code_validator.dart';
import 'package:flutter/material.dart';

class PostalCodeTextField extends StatefulWidget {
  final FormFieldSetter<String>? onSaved;
  final ValueChanged<String>? onFieldSubmitted;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool autofocus;

  const PostalCodeTextField({
    super.key,
    this.onSaved,
    this.onFieldSubmitted,
    this.controller,
    this.focusNode,
    this.autofocus = false,
  });

  @override
  State<PostalCodeTextField> createState() => _PostalCodeTextFieldState();
}

class _PostalCodeTextFieldState extends State<PostalCodeTextField> {
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
        prefixIcon: Icon(Icons.location_on_outlined),
        labelText: 'کدپستی ۱۰ رقمی',
      ),
      validator: (value) {
        return context.validateFiled(PostalCodeValidator(value));
      },
    );
  }
}
