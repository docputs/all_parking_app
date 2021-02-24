import 'package:all_parking/features/parking/presentation/home/bloc/vehicles_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../res/messages.dart';
import '../../../../../../widgets/default_list_tile.dart';
import '../../../../domain/entities/parking_lot.dart';
import '../../../current_parking_lot.dart';

class ParkingLotInfoTile extends StatelessWidget {
  final ParkingLot parkingLot;

  const ParkingLotInfoTile(this.parkingLot, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultListTile(
      key: ValueKey(parkingLot.id),
      title: parkingLot.title,
      subtitle: Messages.selectParkingLotInfoTileSubtitle(parkingLot.address),
      onTap: () {
        context.read<CurrentParkingLot>().setValue(parkingLot);
        context
            .read<VehiclesWatcherBloc>()
            .add(VehiclesWatcherEvent.watchStarted(parkingLot: parkingLot, listType: VehicleListType.active));
        return Navigator.of(context).pop();
      },
    );
  }
}
