import 'package:all_parking/widgets/validation_form_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../features/parking/core/errors/parking_failure.dart';
import 'default_text_field.dart';

class ParkingLotTextFormField extends StatelessWidget {
  final String labelText;
  final void Function(String) onChanged;
  final Either<ParkingFailure, String> Function(String) validationEither;
  final ValidationFormState state;
  final TextInputType keyboardType;
  final bool obscureText;
  final TextEditingController controller;
  final int maxLength;
  final bool multiline;
  final String mask;
  final TextCapitalization textCapitalization;

  const ParkingLotTextFormField({
    Key key,
    @required this.labelText,
    this.onChanged,
    this.validationEither,
    @required this.state,
    this.keyboardType,
    this.obscureText,
    this.controller,
    this.maxLength,
    this.multiline = false,
    this.mask,
    this.textCapitalization = TextCapitalization.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextField(
      labelText: labelText,
      onChanged: onChanged,
      obscureText: obscureText,
      keyboardType: keyboardType,
      autovalidateMode: state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
      validator: validationEither != null ? (value) => validationEither(value).fold((f) => f.message, (_) => null) : null,
      controller: controller,
      maxLength: maxLength,
      maxLines: multiline ? 3 : 1,
      mask: mask,
      textCapitalization: textCapitalization,
    );
  }
}
