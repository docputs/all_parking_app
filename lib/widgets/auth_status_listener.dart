import 'package:all_parking/app_config.dart';
import 'package:all_parking/features/auth/presentation/auth_bloc.dart';
import 'package:all_parking/features/auth/presentation/employee/employee_auth_bloc.dart';
import 'package:all_parking/res/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthStatusListener extends StatelessWidget {
  final Widget child;

  const AuthStatusListener({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppConfig.isManager ? _buildManagerListener() : _buildEmployeeListener();
  }

  Widget _buildManagerListener() {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) => state.maybeWhen(
        orElse: () => null,
        unauthenticated: () => _navigateToSignIn(context),
      ),
      child: child,
    );
  }

  Widget _buildEmployeeListener() {
    return BlocListener<EmployeeAuthBloc, EmployeeAuthState>(
      listener: (context, state) {
        return state.maybeWhen(
          orElse: () => null,
          unauthenticated: () => _navigateToSignIn(context),
        );
      },
      child: child,
    );
  }

  Future<void> _navigateToSignIn(BuildContext context) => Navigator.of(context).pushReplacementNamed(Constants.signInRoute);
}
