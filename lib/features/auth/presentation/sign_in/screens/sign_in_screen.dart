import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../service_locator.dart';
import '../bloc/sign_in_bloc.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context) => getIt<SignInBloc>(),
        child: Center(child: Text('sign in')),
      ),
    );
  }
}
