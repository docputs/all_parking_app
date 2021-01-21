import 'package:all_parking/features/auth/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import 'default_text_form_field.dart';

class ParkingLotTextFormField extends StatelessWidget {
  final String labelText;
  final void Function(String) onChanged;
  final Either<ParkingFailure, String> Function(String) validationEither;
  final ValidationFormState state;
  final TextInputType keyboardType;
  final bool obscureText;

  const ParkingLotTextFormField({
    Key key,
    @required this.labelText,
    @required this.state,
    this.keyboardType,
    this.validationEither,
    this.onChanged,
    this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextFormField(
      labelText: labelText,
      onChanged: onChanged,
      obscureText: obscureText,
      keyboardType: keyboardType,
      autovalidateMode: state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
      validator: (value) => validationEither(value).fold(
        (f) => f.maybeMap(
          serverFailure: (_) => _.message,
          unknownFailure: (_) => _.message,
          orElse: () => null,
        ),
        (_) => null,
      ),
    );
  }
}
