import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:provider/provider.dart';

import '../../../../../res/constants.dart';
import '../../../../../res/messages.dart';
import '../../../../../res/theme.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../../../../../widgets/no_parking_lots_found.dart';
import '../../../../../widgets/parking_lot_watcher_builder.dart';
import '../../../../auth/presentation/auth_bloc.dart';
import '../../current_parking_lot.dart';
import 'components/custom_app_bar.dart';
import '../../../../../widgets/default_drawer.dart';
import 'components/parking_lot_dashboard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          unauthenticated: () => Navigator.of(context).pushReplacementNamed(Constants.signInRoute),
          orElse: () {},
        );
      },
      child: AppScaffold(
        customAppBar: CustomAppBar(),
        drawer: const DefaultDrawer(),
        body: _buildBody(),
        floatingActionButton: _buildCustomFAB(context),
      ),
    );
  }

  SpeedDial _buildCustomFAB(BuildContext context) {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      children: [
        _buildFABMenuItem(
          labelText: Messages.checkOutVehicleLabel,
          icon: Icons.north_east,
          color: AppColors.errorColor,
        ),
        _buildFABMenuItem(
          labelText: Messages.checkInVehicleLabel,
          icon: Icons.south_east,
          color: AppColors.checkColor,
          onTap: () => Navigator.of(context).pushNamed(Constants.checkInVehicleRoute),
        ),
      ],
    );
  }

  SpeedDialChild _buildFABMenuItem({String labelText, Color color, IconData icon, void Function() onTap}) {
    return SpeedDialChild(
      label: labelText,
      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
      backgroundColor: color,
      child: Icon(icon),
      onTap: onTap,
    );
  }

  Widget _buildBody() {
    return ParkingLotWatcherBuilder(
      onSuccess: (_) => Consumer<CurrentParkingLot>(
        builder: (context, currentParkingLot, _) {
          return currentParkingLot.value.fold(
            () => const NoParkingLotsFound(),
            (parkingLot) => ParkingLotDashboard(parkingLot),
          );
        },
      ),
    );
  }
}
