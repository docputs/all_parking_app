import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../res/constants.dart';
import '../../auth/presentation/auth_bloc.dart';

class SplashManagerScreen extends StatefulWidget {
  const SplashManagerScreen({Key key}) : super(key: key);

  @override
  _SplashManagerScreenState createState() => _SplashManagerScreenState();
}

class _SplashManagerScreenState extends State<SplashManagerScreen> {
  @override
  void initState() {
    super.initState();
    context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.when(
          initializing: () => null,
          authenticated: (_) => Navigator.of(context).pushReplacementNamed(Constants.homeRoute),
          unauthenticated: () => Navigator.of(context).pushReplacementNamed(Constants.signInRoute),
        );
      },
      child: const Scaffold(body: Center(child: CircularProgressIndicator())),
    );
  }
}
