import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../res/constants.dart';
import '../../../../../../res/messages.dart';
import '../../../../../../widgets/default_alert_dialog.dart';
import '../../../../../../widgets/default_list_tile.dart';
import '../../../../domain/entities/parking_lot.dart';
import '../../bloc/manage_parking_lots_bloc.dart';

class ManageParkingLotTile extends StatelessWidget {
  final ParkingLot parkingLot;

  const ManageParkingLotTile(this.parkingLot, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultListTile(
      title: parkingLot.title,
      subtitle: parkingLot.address.street,
      actions: _buildActions(context),
    );
  }

  List<IconButton> _buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.edit),
        onPressed: () => Navigator.of(context).pushNamed(Constants.editParkingLotRoute, arguments: parkingLot),
      ),
      IconButton(
        icon: Icon(Icons.delete),
        onPressed: () => _showConfirmDialog(context).then((value) {
          if (value != null && value) context.read<ManageParkingLotsBloc>().add(ManageParkingLotsEvent.deleted(parkingLot));
        }),
      ),
    ];
  }

  Future<bool> _showConfirmDialog(BuildContext context) {
    return showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) => DefaultAlertDialog(
        title: Messages.manageParkingLotsDeleteDialogTitle,
        message: Messages.manageParkingLotsDeleteDialogContent(parkingLot.title),
        rightButtonText: Messages.manageParkingLotsDeleteDialogRightButton,
        leftButtonText: Messages.manageParkingLotsDeleteDialogLeftButton,
        useWarningButton: true,
      ),
    );
  }
}
