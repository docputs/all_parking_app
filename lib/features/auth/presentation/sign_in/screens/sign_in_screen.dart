import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../service_locator.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../bloc/sign_in_bloc.dart';
import 'components/sign_in_form.dart';

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
            const SignInForm(),
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
}
