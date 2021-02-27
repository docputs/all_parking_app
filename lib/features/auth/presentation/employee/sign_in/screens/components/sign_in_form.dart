import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../res/assets.dart';
import '../../../../../../../res/messages.dart';
import '../../../../../../../res/theme.dart';
import '../../../../../../../widgets/default_button.dart';
import '../../bloc/sign_in_employee_bloc.dart';
import 'token_form_field.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildLogo(context),
        const SizedBox(height: 80),
        _buildInstructionText(),
        const SizedBox(height: 20),
        _buildTokenField(),
        const SizedBox(height: 40),
        _buildSubmitButton(),
        const SizedBox(height: 60),
      ],
    );
  }

  Widget _buildTokenField() {
    return BlocBuilder<SignInEmployeeBloc, SignInEmployeeState>(
      buildWhen: (p, c) => p.token != c.token || p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) {
        return TokenFormField(
          labelText: Messages.signInEmployeeTokenLabel,
          onChanged: (value) => context.read<SignInEmployeeBloc>().add(SignInEmployeeEvent.changedToken(value)),
        );
      },
    );
  }

  Text _buildInstructionText() {
    return const Text(
      Messages.signInEmployeeInsertTokenInstruction,
      style: TextStyle(fontSize: 16, color: AppColors.textColor),
    );
  }

  Widget _buildSubmitButton() {
    return BlocBuilder<SignInEmployeeBloc, SignInEmployeeState>(
      buildWhen: (p, c) => p.isSubmitting != c.isSubmitting,
      builder: (context, state) {
        return state.isSubmitting
            ? const CircularProgressIndicator()
            : DefaultButton(
                text: Messages.signInEmployeeSubmitButton,
                onPressed: () => context.read<SignInEmployeeBloc>().add(const SignInEmployeeEvent.submitted()),
              );
      },
    );
  }

  Widget _buildLogo(BuildContext context) {
    return Image.asset(
      Assets.extendedLogo,
      width: MediaQuery.of(context).size.width / 1.5,
    );
  }
}
