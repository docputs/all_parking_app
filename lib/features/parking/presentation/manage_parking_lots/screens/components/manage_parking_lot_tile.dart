import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/res/theme.dart';
import 'package:all_parking/widgets/default_list_tile.dart';
import 'package:flutter/material.dart';

class ManageParkingLotTile extends StatelessWidget {
  final ParkingLot parkingLot;

  const ManageParkingLotTile(this.parkingLot, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(parkingLot.id),
      direction: DismissDirection.endToStart,
      onDismissed: (_) {},
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
          onPressed: () {},
        ),
      ),
    );
  }

  Future<bool> _showDismissDialog(BuildContext context) {
    return showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text('Tem certeza?'),
          content: Text('Deseja remover ${parkingLot.title} da sua lista de estacionamentos?'),
          actions: [
            FlatButton(
              child: Text('VOLTAR', style: TextStyle(color: AppColors.primaryColor),),
              onPressed: () => Navigator.of(context).pop(false),
            ),
            FlatButton(
              child: Text('REMOVER', style: TextStyle(color: AppColors.errorColor)),
              onPressed: () => Navigator.of(context).pop(true),
            ),
          ],
        );
      },
    );
  }
}
