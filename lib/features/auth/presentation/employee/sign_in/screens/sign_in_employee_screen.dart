import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../res/constants.dart';
import '../../../../../../res/messages.dart';
import '../../../../../../service_locator.dart';
import '../../../../../../widgets/app_scaffold.dart';
import '../bloc/sign_in_employee_bloc.dart';
import 'components/sign_in_form.dart';

class SignInEmployeeScreen extends StatelessWidget {
  const SignInEmployeeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInEmployeeBloc>(),
      child: BlocListener<SignInEmployeeBloc, SignInEmployeeState>(
        listenWhen: (p, c) => p.authFailureOrSuccessOption != c.authFailureOrSuccessOption,
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
            () => null,
            (either) => either.fold(
              (f) => FlushbarHelper.createError(message: f.message).show(context),
              (_) => Navigator.of(context).pushReplacementNamed(Constants.splashRoute),
            ),
          );
        },
        child: AppScaffold(
          title: Messages.signInEmployeeScreenTitle,
          body: const SignInForm(),
        ),
      ),
    );
  }
}
