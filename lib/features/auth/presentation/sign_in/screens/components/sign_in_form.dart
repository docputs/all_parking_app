import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../service_locator.dart';
import '../../../../../../widgets/default_button.dart';
import '../../../../../../widgets/default_text_form_field.dart';
import '../../../../core/util/validators.dart';
import '../../bloc/sign_in_bloc.dart';
import 'create_account_text.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildEmailField(),
        const SizedBox(height: 10),
        _buildPasswordField(context),
        const SizedBox(height: 40),
        DefaultButton(
          text: 'ENTRAR',
          onPressed: () => context.read<SignInBloc>().add(const SignInEvent.signInPressed()),
        ),
        const SizedBox(height: 40),
        const CreateAccountText(),
      ],
    );
  }

  Widget _buildEmailField() {
    return BlocBuilder<SignInBloc, SignInState>(
      buildWhen: (p, c) => p.email != c.email || p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) => DefaultTextFormField(
        labelText: 'E-mail',
        onChanged: (value) => context.read<SignInBloc>().add(SignInEvent.emailChanged(value)),
        keyboardType: TextInputType.emailAddress,
        autovalidateMode: state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
        validator: (value) => getIt<Validators>().validateEmailAddress(value).fold(
              (f) => f.maybeMap(
                emailBadlyFormatted: (_) => 'E-mail inválido',
                emptyField: (_) => 'Campo obrigatório',
                orElse: () => null,
              ),
              (_) => null,
            ),
      ),
    );
  }

  Widget _buildPasswordField(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      buildWhen: (p, c) => p.password != c.password || p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) => DefaultTextFormField(
        labelText: 'Senha',
        onChanged: (value) => context.read<SignInBloc>().add(SignInEvent.passwordChanged(value)),
        obscureText: true,
        keyboardType: TextInputType.emailAddress,
        autovalidateMode: state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
        validator: (value) => getIt<Validators>().validatePassword(value).fold(
              (f) => f.maybeMap(
                emptyField: (_) => 'Campo obrigatório',
                orElse: () => null,
              ),
              (_) => null,
            ),
      ),
    );
  }
}
