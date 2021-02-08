import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/presentation/current_parking_lot.dart';
import 'package:all_parking/res/constants.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CurrentParkingLot>(
      builder: (context, currentParkingLot, child) {
        return AppBar(
          title: Text(currentParkingLot.value.fold(() => 'All Parking', (parkingLot) => parkingLot.title)),
          actions: [
            IconButton(
              icon: Icon(currentParkingLot.isEmpty ? Icons.add : Icons.place),
              onPressed: () => _calculateAppBarNavigation(context, currentParkingLot),
            ),
          ],
        );
      },
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0);

  void _calculateAppBarNavigation(BuildContext context, CurrentParkingLot currentParkingLot) {
    currentParkingLot.isEmpty
        ? Navigator.of(context).pushNamed(Constants.addParkingLotRoute).then((value) {
            if (value != null) {
              final parkingLot = value as ParkingLot;
              FlushbarHelper.createInformation(message: '${parkingLot.title} salvo com sucesso!').show(context);
            }
          })
        : Navigator.of(context).pushNamed(Constants.selectParkingLotRoute);
  }
}
