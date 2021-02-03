import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/presentation/manage_parking_lots/bloc/manage_parking_lots_bloc.dart';
import 'package:all_parking/res/constants.dart';
import 'package:all_parking/res/theme.dart';
import 'package:all_parking/widgets/default_alert_dialog.dart';
import 'package:all_parking/widgets/default_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        title: 'Tem certeza?',
        message: 'Deseja remover ${parkingLot.title} da sua lista de estacionamentos?',
        rightButtonText: 'REMOVER',
        leftButtonText: 'VOLTAR',
        useWarningButton: true,
      ),
    );
  }
}
