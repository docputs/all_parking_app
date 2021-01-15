import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../../../../../widgets/default_text_form_field.dart';
import '../../../../core/errors/auth_failure.dart';
import '../../bloc/sign_up_bloc.dart';

class SignUpTextFormField extends StatelessWidget {
  final String labelText;
  final void Function(String) onChanged;
  final Either<AuthFailure, String> Function(String) validationEither;
  final SignUpState state;
  final TextInputType keyboardType;
  final bool obscureText;

  const SignUpTextFormField({
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
          passwordsDontMatch: (_) => 'Senhas não conferem',
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
