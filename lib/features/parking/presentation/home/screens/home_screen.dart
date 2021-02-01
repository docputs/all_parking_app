import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/presentation/add_parking_lot/bloc/add_parking_lot_bloc.dart';
import 'package:all_parking/features/parking/presentation/current_parking_lot.dart';
import 'package:all_parking/features/parking/presentation/home/screens/components/custom_app_bar.dart';
import 'package:all_parking/features/parking/presentation/home/screens/components/parking_lot_dashboard.dart';
import 'package:all_parking/res/constants.dart';
import 'package:all_parking/res/theme.dart';
import 'package:all_parking/widgets/no_parking_lots_found.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hawk_fab_menu/hawk_fab_menu.dart';

import '../../../../../service_locator.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../../../../auth/presentation/auth_bloc.dart';
import 'components/default_drawer.dart';

class HomeScreen extends StatelessWidget {
  final currentParkingLot = getIt<CurrentParkingLot>();

  HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          unauthenticated: (_) => Navigator.of(context).pushReplacementNamed(Constants.signInRoute),
          orElse: () {},
        );
      },
      child: AppScaffold(
        customAppBar: CustomAppBar(),
        drawer: const DefaultDrawer(),
        body: HawkFabMenu(
          fabColor: AppColors.accentColor,
          body: _buildBody(),
          items: [
            HawkFabMenuItem(
              label: 'CHECK-IN',
              labelBackgroundColor: Colors.white,
              icon: Icon(Icons.south_east),
              ontap: () {},
            ),
            HawkFabMenuItem(
              label: 'CHECK-OUT',
              labelBackgroundColor: Colors.white,
              icon: Icon(Icons.north_east),
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return ValueListenableBuilder<Option<ParkingLot>>(
      valueListenable: currentParkingLot,
      builder: (context, parkingLotOption, _) {
        return parkingLotOption.fold(
          () => const NoParkingLotsFound(),
          (parkingLot) => ParkingLotDashboard(parkingLot),
        );
      },
    );
  }
}
