import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../res/drawer_messages.dart';
import '../res/messages.dart';
import '../res/theme.dart';
import '../features/auth/presentation/auth_bloc.dart';
import 'drawer_list_tile.dart';

class DefaultDrawer extends StatelessWidget {
  const DefaultDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(child: _buildDrawerHeader()),
          Expanded(flex: 3, child: _buildDrawerItems(context)),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox(),
          authenticated: (user) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              color: AppColors.primaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    user.displayName,
                    style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),
                  ),
                  Text(
                    Messages.userType(user.type),
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildDrawerItems(BuildContext context) {
    return Column(
      children: [
        ...DrawerMessages.items.map((item) => DrawerListTile(item)).toList(),
        DrawerListTile(
          DrawerItem(
            Messages.logoutLabel,
            icon: Icons.logout,
            customOnTap: () => context.read<AuthBloc>().add(const AuthEvent.signedOut()),
          ),
        ),
      ],
    );
  }
}
