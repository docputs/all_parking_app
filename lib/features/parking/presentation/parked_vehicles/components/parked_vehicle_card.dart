import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:flutter/material.dart';

class ParkedVehicleCard extends StatelessWidget {
  final ParkedVehicle vehicle;

  const ParkedVehicleCard(this.vehicle, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Text(vehicle.title),
    );
  }
}
