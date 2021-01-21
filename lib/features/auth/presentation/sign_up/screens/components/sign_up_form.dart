import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../res/messages.dart';
import '../../../../../../service_locator.dart';
import '../../../../../../widgets/default_button.dart';
import '../../../../core/util/validators.dart';
import '../../bloc/sign_up_bloc.dart';
import 'sign_up_text_form_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (p, c) => p.isSubmitting != c.isSubmitting,
      builder: (context, state) {
        return Form(
          child: Column(
            children: [
              _buildFirstNameField(),
              _buildLastNameField(),
              _buildEmailField(),
              _buildPasswordField(),
              _buildConfirmPasswordField(),
              const SizedBox(height: 40),
              state.isSubmitting ? const CircularProgressIndicator() : _buildCreateAccountButton(context),
            ],
          ),
        );
      },
    );
  }

  Widget _buildFirstNameField() {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) => SignUpTextFormField(
        labelText: Messages.signUpFirstNameLabel,
        state: state as ValidationFormState,
        onChanged: (value) => context.read<SignUpBloc>().add(SignUpEvent.firstNameChanged(value)),
        validationEither: getIt<Validators>().validateDisplayName,
      ),
    );
  }

  Widget _buildLastNameField() {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) => SignUpTextFormField(
        labelText: Messages.signUpLastNameLabel,
        state: state as ValidationFormState,
        onChanged: (value) => context.read<SignUpBloc>().add(SignUpEvent.lastNameChanged(value)),
        validationEither: getIt<Validators>().validateDisplayName,
      ),
    );
  }

  Widget _buildEmailField() {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) => SignUpTextFormField(
        labelText: Messages.signUpEmailLabel,
        state: state as ValidationFormState,
        onChanged: (value) => context.read<SignUpBloc>().add(SignUpEvent.emailChanged(value)),
        validationEither: getIt<Validators>().validateEmailAddress,
      ),
    );
  }

  Widget _buildPasswordField() {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) => SignUpTextFormField(
        labelText: Messages.signUpPasswordLabel,
        state: state as ValidationFormState,
        onChanged: (value) => context.read<SignUpBloc>().add(SignUpEvent.passwordChanged(value)),
        validationEither: getIt<Validators>().validatePassword,
        obscureText: true,
      ),
    );
  }

  Widget _buildConfirmPasswordField() {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) => SignUpTextFormField(
        labelText: Messages.signUpConfirmPasswordLabel,
        state: state as ValidationFormState,
        validationEither: (value) => getIt<Validators>().validateConfirmPassword(value, state.password),
        onChanged: (value) => context.read<SignUpBloc>().add(SignUpEvent.confirmPasswordChanged(value)),
        obscureText: true,
      ),
    );
  }

  Widget _buildCreateAccountButton(BuildContext context) {
    return DefaultButton(
      text: Messages.signUpCreateAccountButton,
      onPressed: () => context.read<SignUpBloc>().add(const SignUpEvent.signUpPressed()),
    );
  }
}
