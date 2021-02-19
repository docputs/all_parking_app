import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../res/messages.dart';
import '../../../../../../../utils/validators.dart';
import '../../../../../../../widgets/default_button.dart';
import '../../bloc/sign_in_bloc.dart';
import 'create_account_text.dart';
import 'sign_in_text_form_field.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildEmailField(),
        _buildPasswordField(context),
        const SizedBox(height: 40),
        _buildButtonOrLoading(context),
        const SizedBox(height: 40),
        const CreateAccountText(),
      ],
    );
  }

  Widget _buildEmailField() {
    return BlocBuilder<SignInBloc, SignInState>(
      buildWhen: (p, c) => p.email != c.email || p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) => SignInTextFormField(
        labelText: Messages.emailFieldLabel,
        state: state,
        onChanged: (value) => context.read<SignInBloc>().add(SignInEvent.emailChanged(value)),
        keyboardType: TextInputType.emailAddress,
        validationEither: Validators.validateEmailAddress,
      ),
    );
  }

  Widget _buildPasswordField(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      buildWhen: (p, c) => p.password != c.password || p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) => SignInTextFormField(
        labelText: Messages.passwordFieldLabel,
        state: state,
        onChanged: (value) => context.read<SignInBloc>().add(SignInEvent.passwordChanged(value)),
        obscureText: true,
        keyboardType: TextInputType.emailAddress,
        validationEither: Validators.validatePassword,
      ),
    );
  }

  Widget _buildButtonOrLoading(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      buildWhen: (p, c) => p.isSubmitting != c.isSubmitting,
      builder: (context, state) {
        return state.isSubmitting
            ? const CircularProgressIndicator()
            : DefaultButton(
                text: Messages.signInButton,
                onPressed: () => context.read<SignInBloc>().add(const SignInEvent.signInPressed()),
              );
      },
    );
  }
}
