import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  final String labelText;
  final bool autocorrect;
  final bool enableSuggestions;
  final bool obscureText;
  final void Function(String) onChanged;
  final TextInputType keyboardType;
  final String Function(String) validator;
  final AutovalidateMode autovalidateMode;
  final bool enabled;
  final TextEditingController controller;
  final int maxLength;
  final int maxLines;

  const DefaultTextField({
    Key key,
    @required this.labelText,
    this.autocorrect,
    this.enableSuggestions,
    this.onChanged,
    this.obscureText = false,
    this.keyboardType,
    this.validator,
    this.autovalidateMode,
    this.enabled = true,
    this.controller,
    this.maxLength,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(labelText: labelText, counterText: ''),
      autocorrect: false,
      enableSuggestions: false,
      obscureText: obscureText ?? false,
      onChanged: onChanged,
      autovalidateMode: autovalidateMode,
      keyboardType: keyboardType,
      validator: validator,
      enabled: enabled,
      controller: controller,
      maxLength: maxLength,
      maxLines: maxLines,
    );
  }
}
