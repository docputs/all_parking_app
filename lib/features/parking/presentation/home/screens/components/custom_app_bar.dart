import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/presentation/current_parking_lot.dart';
import 'package:all_parking/res/constants.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';

import '../../../../../../service_locator.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final currentParkingLot = getIt<CurrentParkingLot>();

  CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Option<ParkingLot>>(
      valueListenable: currentParkingLot,
      builder: (context, parkingLotOption, child) {
        return AppBar(
          title: Text(parkingLotOption.fold(() => 'All Parking', (parkingLot) => parkingLot.title)),
          actions: [
            IconButton(
              icon: Icon(parkingLotOption.fold(() => Icons.add, (a) => Icons.place)),
              onPressed: () => _calculateAppBarNavigation(context, parkingLotOption),
            ),
          ],
        );
      },
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0);

  void _calculateAppBarNavigation(BuildContext context, Option<ParkingLot> parkingLotOption) {
    return parkingLotOption.fold(
      () => Navigator.of(context).pushNamed(Constants.addParkingLotRoute).then((value) {
        if (value != null) {
          final parkingLot = value as ParkingLot;
          FlushbarHelper.createInformation(message: '${parkingLot.title} salvo com sucesso!').show(context);
        }
      }),
      (parkingLot) => Navigator.of(context).pushNamed(Constants.selectParkingLotRoute),
    );
  }
}
