import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/presentation/current_parking_lot.dart';
import 'package:all_parking/widgets/default_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ParkingLotInfoTile extends StatelessWidget {
  final ParkingLot parkingLot;

  const ParkingLotInfoTile(this.parkingLot, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultListTile(
      key: ValueKey(parkingLot.id),
      title: parkingLot.title,
      subtitle: '${parkingLot.address.street} | ${parkingLot.address.cep}',
      onTap: () {
        context.read<CurrentParkingLot>().setValue(parkingLot);
        return Navigator.of(context).pop();
      },
    );
  }
}
