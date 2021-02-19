import 'package:all_parking/features/auth/presentation/employee/employee_auth_bloc.dart';
import 'package:all_parking/res/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../service_locator.dart';

class SplashEmployeeScreen extends StatelessWidget {
  const SplashEmployeeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EmployeeAuthBloc>()..add(const EmployeeAuthEvent.tryAutoSignIn()),
      child: BlocListener<EmployeeAuthBloc, EmployeeAuthState>(
        listener: (context, state) => state.when(
          initial: () => null,
          authenticated: () => Navigator.of(context).pushReplacementNamed(Constants.homeRoute),
          unauthenticated: () => Navigator.of(context).pushReplacementNamed(Constants.signInEmployeeRoute),
        ),
        child: const Scaffold(body: Center(child: CircularProgressIndicator())),
      ),
    );
  }
}
