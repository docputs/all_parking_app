import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/res/assets.dart';
import 'package:all_parking/res/constants.dart';
import 'package:all_parking/res/messages.dart';
import 'package:all_parking/res/theme.dart';
import 'package:all_parking/widgets/parked_vehicle_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'cards_display.dart';

class ParkingLotDashboard extends StatelessWidget {
  final ParkingLot parkingLot;

  const ParkingLotDashboard(this.parkingLot, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 20),
        Text(
          'CARTÕES',
          style: TextStyle(
            fontSize: 14,
            color: AppColors.textColor,
          ),
        ),
        CardsDisplay(parkingLot),
        const SizedBox(height: 60),
        Text(
          'VEÍCULOS ESTACIONADOS',
          style: TextStyle(
            fontSize: 14,
            color: AppColors.textColor,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [Constants.defaultBoxShadow],
            borderRadius: BorderRadius.circular(10),
          ),
          child: parkingLot.parkedVehicles.isEmpty ? _buildEmptyWarning(context) : _buildParkedVehicleList(),
        ),
      ],
    );
  }

  Widget _buildEmptyWarning(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        Image.asset(Assets.noData, width: MediaQuery.of(context).size.width / 2),
        const SizedBox(height: 10),
        const Text(Messages.noParkedVehicles, style: TextStyle(color: AppColors.textColor)),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildParkedVehicleList() {
    return ListView.separated(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => ParkedVehicleTile(parkingLot.parkedVehicles[index]),
      itemCount: parkingLot.parkedVehicles.length,
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}

final parkedVehicles = [
  ParkedVehicle(
    id: QRCode('1'),
    title: 'Ford Fiesta',
    licensePlate: 'GAF1246',
    color: VehicleColor.black,
    checkIn: DateTime(2020, 01, 19, 12, 30),
    checkOut: DateTime(2020, 01, 19, 12, 30),
    observations: '',
    type: VehicleType.car,
  ),
  ParkedVehicle(
    id: QRCode('2'),
    title: 'Fiat Palio',
    licensePlate: 'DMB2871',
    color: VehicleColor.gray,
    checkIn: DateTime(2020, 01, 19, 12, 30),
    checkOut: DateTime(2020, 01, 19, 12, 30),
    observations: '',
    type: VehicleType.car,
  ),
  ParkedVehicle(
    id: QRCode('3'),
    title: 'Hyundai i30',
    licensePlate: 'ABC1234',
    color: VehicleColor.red,
    checkIn: DateTime(2020, 01, 19, 12, 30),
    checkOut: DateTime(2020, 01, 19, 12, 30),
    observations: '',
    type: VehicleType.car,
  ),
];
