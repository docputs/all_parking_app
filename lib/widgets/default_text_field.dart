import 'package:all_parking/res/constants.dart';
import 'package:all_parking/res/theme.dart';
import 'package:all_parking/utils/mask_text_input_formatter.dart';
import 'package:flutter/material.dart';

class DefaultTextField extends StatefulWidget {
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
  final String mask;
  final TextCapitalization textCapitalization;

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
    this.maxLines = 1,
    this.mask,
    this.textCapitalization,
  }) : super(key: key);

  @override
  _DefaultTextFieldState createState() => _DefaultTextFieldState();
}

class _DefaultTextFieldState extends State<DefaultTextField> {
  MaskTextInputFormatter _maskTextInputFormatter;

  @override
  void initState() {
    super.initState();
    if (widget.mask != null) _maskTextInputFormatter = MaskTextInputFormatter(mask: widget.mask);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: widget.labelText,
          counterText: '',
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 0.3, color: AppColors.textColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 0.3, color: AppColors.textColor),
          ),
          filled: true,
          isDense: true,
        ),
        autocorrect: false,
        enableSuggestions: false,
        obscureText: widget.obscureText ?? false,
        onChanged: widget.onChanged,
        autovalidateMode: widget.autovalidateMode,
        keyboardType: widget.keyboardType,
        validator: widget.validator,
        enabled: widget.enabled,
        controller: widget.controller,
        maxLength: widget.maxLength,
        maxLines: widget.maxLines,
        inputFormatters: _maskTextInputFormatter != null ? [_maskTextInputFormatter] : [],
        textCapitalization: widget.textCapitalization,
      ),
    );
  }
}
