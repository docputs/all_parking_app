import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../res/assets.dart';
import '../../../../../res/constants.dart';
import '../../../../../res/messages.dart';
import '../../../../../service_locator.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../../auth_bloc.dart';
import '../bloc/sign_in_bloc.dart';
import 'components/sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInBloc>(),
      child: AppScaffold(
        title: Messages.signInScreenTitle,
        body: BlocListener<SignInBloc, SignInState>(
          listenWhen: (p, c) => p.authFailureOrSuccessOption != c.authFailureOrSuccessOption,
          listener: (context, state) => state.authFailureOrSuccessOption.fold(
            () => null,
            (either) => either.fold(
              (f) => FlushbarHelper.createError(message: f.message).show(context),
              (_) => Navigator.of(context).pushReplacementNamed(Constants.splashRoute),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLogo(context),
              const SizedBox(height: 40),
              const SignInForm(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogo(BuildContext context) {
    return Image.asset(
      Assets.extendedLogo,
      width: MediaQuery.of(context).size.width / 1.5,
    );
  }
}
