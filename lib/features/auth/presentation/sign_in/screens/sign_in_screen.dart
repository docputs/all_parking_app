import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../service_locator.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../../../../../widgets/default_button.dart';
import '../../../../../widgets/default_text_form_field.dart';
import '../bloc/sign_in_bloc.dart';
import 'components/create_account_text.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Acesse sua conta',
      body: BlocProvider(
        create: (context) => getIt<SignInBloc>(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildLogo(context),
            const SizedBox(height: 40),
            _buildInputForm(),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo(BuildContext context) {
    return Image.asset(
      'assets/images/logos/extended_logo.png',
      width: MediaQuery.of(context).size.width / 1.5,
    );
  }

  Widget _buildInputForm() {
    return Form(
      child: Column(
        children: [
          DefaultTextFormField(labelText: 'E-mail'),
          const SizedBox(height: 10),
          DefaultTextFormField(labelText: 'Senha'),
          const SizedBox(height: 40),
          DefaultButton(
            text: 'ENTRAR',
            onPressed: () {},
          ),
          const SizedBox(height: 40),
          const CreateAccountText(),
        ],
      ),
    );
  }
}
