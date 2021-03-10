import 'package:all_parking/features/parking/presentation/manage_parking_lots/bloc/share_qr_codes/share_qr_codes_bloc.dart';
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
      trailing: PopupMenuButton(
        itemBuilder: (context) {
          return [
            PopupMenuItem(
              child: Text(Messages.manageParkingLotsEditPopupItem),
              value: () => Navigator.of(context).pushNamed(Constants.editParkingLotRoute, arguments: parkingLot),
            ),
            PopupMenuItem(
              child: Text(Messages.manageParkingLotsCodesPopupItem),
              value: () => context.read<ShareQrCodesBloc>().add(ShareQrCodesEvent.shareRequested(parkingLot)),
            ),
            PopupMenuItem(
              child: Text(Messages.manageParkingLotsDeletePopupItem),
              value: () => _showConfirmDialog(context).then((value) {
                if (value != null && value) context.read<ManageParkingLotsBloc>().add(ManageParkingLotsEvent.deleted(parkingLot));
              }),
            ),
          ];
        },
        onSelected: (value) => value(),
      ),
    );
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
