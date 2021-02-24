import 'package:all_parking/app_config.dart';
import 'package:all_parking/widgets/current_parking_lot_builder.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../res/constants.dart';
import '../../../../../../res/messages.dart';
import '../../../../domain/entities/parking_lot.dart';
import '../../../current_parking_lot.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CurrentParkingLot>(
      builder: (context, currentParkingLot, _) {
        return AppBar(
          title: Text(
            currentParkingLot.value.fold(
              () => Messages.defaultAppBarTitle,
              (parkingLot) => parkingLot.title,
            ),
          ),
          actions: _calculateActionsFromUserType(currentParkingLot, context),
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
              FlushbarHelper.createInformation(message: Messages.snackBarSaveSuccess(parkingLot.title)).show(context);
            }
          })
        : Navigator.of(context).pushNamed(Constants.selectParkingLotRoute);
  }

  List<Widget> _calculateActionsFromUserType(CurrentParkingLot currentParkingLot, BuildContext context) {
    return AppConfig.isManager
        ? [
            IconButton(
              icon: Icon(currentParkingLot.isEmpty ? Icons.add : Icons.place),
              onPressed: () => _calculateAppBarNavigation(context, currentParkingLot),
            ),
          ]
        : null;
  }
}
