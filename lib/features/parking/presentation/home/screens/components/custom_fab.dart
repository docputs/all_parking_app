import 'package:all_parking/features/parking/domain/entities/address.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../../../../../../res/constants.dart';
import '../../../../../../res/messages.dart';
import '../../../../../../res/theme.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      children: [
        _buildFABMenuItem(
          labelText: Messages.checkOutVehicleLabel,
          icon: Icons.north_east,
          color: AppColors.errorColor,
        ),
        _buildFABMenuItem(
          labelText: Messages.checkInVehicleLabel,
          icon: Icons.south_east,
          color: AppColors.checkColor,
          onTap: () => Navigator.of(context).pushNamed(Constants.checkInVehicleRoute),
        ),
      ],
    );
  }

  SpeedDialChild _buildFABMenuItem({String labelText, Color color, IconData icon, void Function() onTap}) {
    return SpeedDialChild(
      label: labelText,
      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
      backgroundColor: color,
      child: Icon(icon),
      onTap: onTap,
    );
  }
}

final parkingLot = ParkingLot(
  id: '1',
  title: 'Estacionamento X',
  address: Address(street: 'Rua Nossa Senhora da Saúde', number: '12', cep: '04159001', city: 'São Paulo', uf: 'SP'),
  availableSpots: 56,
  pricePerHour: 12.0,
);
