import 'package:all_parking/features/parking/presentation/home/screens/components/custom_fab.dart';
import 'package:all_parking/widgets/current_parking_lot_builder.dart';
import 'package:flutter/material.dart';

import '../../../../../widgets/app_scaffold.dart';
import '../../../../../widgets/default_drawer.dart';
import 'components/custom_app_bar.dart';
import 'components/parking_lot_dashboard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      customAppBar: const CustomAppBar(),
      drawer: const DefaultDrawer(),
      body: _buildBody(),
      floatingActionButton: const CustomFAB(),
    );
  }

  Widget _buildBody() {
    return CurrentParkingLotBuilder(
      builder: (parkingLot) => ParkingLotDashboard(parkingLot),
    );
  }
}
