import 'package:all_parking/features/auth/presentation/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DefaultDrawer extends StatelessWidget {
  const DefaultDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text('LOGOUT'),
            onPressed: () {
              context.read<AuthBloc>().add(const AuthEvent.signedOut());
            },
          ),
        ],
      ),
    );
  }
}
