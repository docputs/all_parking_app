import 'package:all_parking/features/auth/presentation/employee/sign_in/bloc/sign_in_employee_bloc.dart';
import 'package:all_parking/res/constants.dart';
import 'package:all_parking/res/messages.dart';
import 'package:all_parking/widgets/app_scaffold.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../service_locator.dart';
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
