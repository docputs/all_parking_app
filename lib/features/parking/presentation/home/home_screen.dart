import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../routes/router.gr.dart';
import '../../../../widgets/app_scaffold.dart';
import '../../../auth/presentation/auth_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Estacionamento X',
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            unauthenticated: (_) => ExtendedNavigator.of(context).replace(Routes.signInScreen),
            orElse: () {},
          );
        },
        child: Center(
          child: RaisedButton(
            child: Text('LOGOUT'),
            onPressed: () => context.read<AuthBloc>().add(const AuthEvent.signedOut()),
          ),
        ),
      ),
    );
  }
}
