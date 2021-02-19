import 'package:all_parking/widgets/validation_form_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../res/messages.dart';
import '../../../../../../../utils/validators.dart';
import '../../../../../../../widgets/auth_text_form_field.dart';
import '../../../../../../../widgets/default_button.dart';
import '../../bloc/sign_up_bloc.dart';

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
      builder: (context, state) => AuthTextFormField(
        labelText: Messages.signUpFirstNameLabel,
        state: state as ValidationFormState,
        onChanged: (value) => context.read<SignUpBloc>().add(SignUpEvent.firstNameChanged(value)),
        validationEither: Validators.validateDisplayName,
      ),
    );
  }

  Widget _buildLastNameField() {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) => AuthTextFormField(
        labelText: Messages.signUpLastNameLabel,
        state: state as ValidationFormState,
        onChanged: (value) => context.read<SignUpBloc>().add(SignUpEvent.lastNameChanged(value)),
        validationEither: Validators.validateDisplayName,
      ),
    );
  }

  Widget _buildEmailField() {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) => AuthTextFormField(
        labelText: Messages.signUpEmailLabel,
        state: state as ValidationFormState,
        onChanged: (value) => context.read<SignUpBloc>().add(SignUpEvent.emailChanged(value)),
        validationEither: Validators.validateEmailAddress,
      ),
    );
  }

  Widget _buildPasswordField() {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) => AuthTextFormField(
        labelText: Messages.signUpPasswordLabel,
        state: state as ValidationFormState,
        onChanged: (value) => context.read<SignUpBloc>().add(SignUpEvent.passwordChanged(value)),
        validationEither: Validators.validatePassword,
        obscureText: true,
      ),
    );
  }

  Widget _buildConfirmPasswordField() {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) => AuthTextFormField(
        labelText: Messages.signUpConfirmPasswordLabel,
        state: state as ValidationFormState,
        validationEither: (value) => Validators.validateConfirmPassword(value, state.password),
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
