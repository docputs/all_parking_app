import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../features/auth/core/errors/auth_failure.dart';
import '../features/auth/presentation/sign_in/bloc/sign_in_bloc.dart';
import 'default_text_form_field.dart';

class BlocTextFormField extends StatelessWidget {
  final String labelText;
  final void Function(String) onChanged;
  final Either<AuthFailure, String> Function(String) validationEither;
  final SignInState state;
  final TextInputType keyboardType;
  final bool obscureText;

  const BlocTextFormField({
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
          displayNameTooLong: (_) => 'Nome muito extenso',
          invalidEmailAddress: (_) => 'E-mail inválido',
          emailBadlyFormatted: (_) => 'E-mail inválido',
          weakPassword: (_) => 'Senha fraca',
          emailAlreadyInUse: (_) => 'E-mail já está em uso',
          emptyField: (_) => 'Campo obrigatório',
          orElse: () => null,
        ),
        (_) => null,
      ),
    );
  }
}
