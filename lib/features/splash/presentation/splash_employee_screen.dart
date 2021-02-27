import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../res/constants.dart';
import '../../auth/presentation/employee/employee_auth_bloc.dart';

class SplashEmployeeScreen extends StatefulWidget {
  const SplashEmployeeScreen({Key key}) : super(key: key);

  @override
  _SplashEmployeeScreenState createState() => _SplashEmployeeScreenState();
}

class _SplashEmployeeScreenState extends State<SplashEmployeeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<EmployeeAuthBloc>().add(const EmployeeAuthEvent.tryAutoSignIn());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<EmployeeAuthBloc, EmployeeAuthState>(
      listener: (context, state) => state.when(
        initial: () => null,
        authenticated: (_) => Navigator.of(context).pushReplacementNamed(Constants.homeRoute),
        unauthenticated: () => Navigator.of(context).pushReplacementNamed(Constants.signInRoute),
      ),
      child: const Scaffold(body: Center(child: CircularProgressIndicator())),
    );
  }
}
