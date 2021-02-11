import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../res/constants.dart';
import '../../../../../../res/messages.dart';
import '../../../../../../res/theme.dart';
import '../../../../../../widgets/default_alert_dialog.dart';
import '../../../../../../widgets/default_list_tile.dart';
import '../../../../domain/entities/parking_lot.dart';
import '../../bloc/manage_parking_lots_bloc.dart';

class ManageParkingLotTile extends StatelessWidget {
  final ParkingLot parkingLot;

  const ManageParkingLotTile(this.parkingLot, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(parkingLot.id),
      direction: DismissDirection.endToStart,
      onDismissed: (_) => context.read<ManageParkingLotsBloc>().add(ManageParkingLotsEvent.deleted(parkingLot)),
      confirmDismiss: (_) => _showDismissDialog(context),
      background: Container(
        padding: const EdgeInsets.all(16),
        color: AppColors.errorColor,
        child: Align(
          alignment: Alignment.centerRight,
          child: Icon(
            Icons.delete,
            color: Colors.white,
          ),
        ),
      ),
      child: DefaultListTile(
        title: parkingLot.title,
        subtitle: parkingLot.address.street,
        trailing: IconButton(
          icon: Icon(Icons.edit),
          onPressed: () => Navigator.of(context).pushNamed(Constants.editParkingLotRoute, arguments: parkingLot),
        ),
      ),
    );
  }

  Future<bool> _showDismissDialog(BuildContext context) {
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
