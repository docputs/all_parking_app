import 'package:all_parking/features/auth/presentation/auth_bloc.dart';
import 'package:all_parking/res/drawer_messages.dart';
import 'package:all_parking/res/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'drawer_list_tile.dart';

class DefaultDrawer extends StatelessWidget {
  const DefaultDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(child: _buildDrawerHeader()),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                ...DrawerMessages.items.map((item) => DrawerListTile(item)).toList(),
                DrawerListTile(
                  DrawerItem(
                    'Sair da conta',
                    icon: Icons.logout,
                    customOnTap: () => context.read<AuthBloc>().add(const AuthEvent.signedOut()),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          color: AppColors.primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                state.maybeWhen(orElse: () => '', authenticated: (user) => user.displayName),
                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),
              ),
              Text(
                //TODO: implement user type identification
                'Administrador',
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
        );
      },
    );
  }
}
