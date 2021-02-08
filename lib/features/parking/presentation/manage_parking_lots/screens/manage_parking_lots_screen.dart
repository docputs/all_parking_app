import 'package:all_parking/features/parking/presentation/home/screens/components/default_drawer.dart';
import 'package:all_parking/features/parking/presentation/manage_parking_lots/bloc/manage_parking_lots_bloc.dart';
import 'package:all_parking/features/parking/presentation/manage_parking_lots/screens/components/parking_lot_list.dart';
import 'package:all_parking/res/constants.dart';
import 'package:all_parking/widgets/app_scaffold.dart';
import 'package:all_parking/widgets/no_parking_lots_found.dart';
import 'package:all_parking/widgets/parking_lot_watcher_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../service_locator.dart';

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
      onError: (f) => Text(f.message),
    );
  }

  AppBar _buildCustomAppBar(BuildContext context) {
    return AppBar(
      title: Text('Gerenciar estacionamentos'),
      actions: [
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () => Navigator.of(context).pushNamed(Constants.addParkingLotRoute),
        )
      ],
    );
  }
}
