import 'package:all_parking/features/parking/presentation/home/bloc/find_check_out_bloc.dart';
import 'package:all_parking/res/constants.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../service_locator.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../../../../../widgets/current_parking_lot_builder.dart';
import '../../../../../widgets/default_drawer.dart';
import 'components/custom_app_bar.dart';
import 'components/custom_fab.dart';
import 'components/parking_lot_dashboard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FindCheckOutBloc>(),
      child: BlocListener<FindCheckOutBloc, FindCheckOutState>(
        listener: (context, state) => state.maybeWhen(
          orElse: () => null,
          success: (vehicle) => Navigator.of(context).pushNamed(Constants.checkOutVehicleRoute, arguments: vehicle),
          error: (f) => FlushbarHelper.createError(message: f.message).show(context),
        ),
        child: AppScaffold(
          customAppBar: const CustomAppBar(),
          drawer: const DefaultDrawer(),
          body: _buildBody(),
          floatingActionButton: const CustomFAB(),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return CurrentParkingLotBuilder(
      builder: (parkingLot) => ParkingLotDashboard(parkingLot),
    );
  }
}
