import 'package:all_parking/features/parking/presentation/home/screens/components/watcher_failure_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../res/constants.dart';
import '../../../../../res/messages.dart';
import '../../../../../service_locator.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../../../../../widgets/no_parking_lots_found.dart';
import '../../../../../widgets/parking_lot_watcher_builder.dart';
import '../../home/screens/components/default_drawer.dart';
import '../bloc/manage_parking_lots_bloc.dart';
import 'components/parking_lot_list.dart';

class ManageParkingLotsScreen extends StatelessWidget {
  const ManageParkingLotsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ManageParkingLotsBloc>(),
      child: AppScaffold(
        scrollable: false,
        drawer: const DefaultDrawer(),
        customAppBar: _buildCustomAppBar(context),
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return ParkingLotWatcherBuilder(
      onSuccess: (parkingLots) => parkingLots.isEmpty() ? const NoParkingLotsFound() : ParkingLotList(parkingLots.asList()),
    );
  }

  AppBar _buildCustomAppBar(BuildContext context) {
    return AppBar(
      title: Text(Messages.manageParkingLotsScreenTitle),
      actions: [
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () => Navigator.of(context).pushNamed(Constants.addParkingLotRoute),
        )
      ],
    );
  }
}
