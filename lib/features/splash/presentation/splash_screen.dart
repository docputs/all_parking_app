import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../service_locator.dart';
import 'splash_bloc/splash_bloc.dart';
import 'splash_employee_screen.dart';
import 'splash_manager_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SplashBloc>()..add(const SplashEvent.started()),
      child: BlocBuilder<SplashBloc, SplashState>(
        builder: (context, state) => state.when(
          initial: () => const Scaffold(body: Center(child: CircularProgressIndicator())),
          employee: () => const SplashEmployeeScreen(),
          manager: () => const SplashManagerScreen(),
        ),
      ),
    );
  }
}
