import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../res/messages.dart';
import '../../../../../routes/router.gr.dart';
import '../../../../../service_locator.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../../auth_bloc.dart';
import '../bloc/sign_up_bloc.dart';
import 'components/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignUpBloc>(),
      child: BlocListener<SignUpBloc, SignUpState>(
        listenWhen: (p, c) => p.signUpSuccessOrFailureOption != c.signUpSuccessOrFailureOption,
        listener: (context, state) {
          state.signUpSuccessOrFailureOption.fold(
            () {},
            (either) => either.fold(
              (f) => FlushbarHelper.createError(
                message: f.maybeMap(
                  serverFailure: (_) => Messages.serverFailure,
                  unknownFailure: (_) => Messages.unknownFailure,
                  orElse: () => null,
                ),
              ).show(context),
              (_) {
                ExtendedNavigator.of(context).replace(Routes.homeScreen);
                context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
              },
            ),
          );
        },
        child: AppScaffold(
          title: Messages.signUpScreenTitle,
          scrollable: true,
          body: const SignUpForm(),
        ),
      ),
    );
  }
}
