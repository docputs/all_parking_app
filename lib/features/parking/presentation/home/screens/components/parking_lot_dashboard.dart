import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
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
        const SizedBox(height: 40),
        Text(
          'Veículos estacionados',
          style: TextStyle(
            fontSize: 12,
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        parkingLot.parkedVehicles.isEmpty ? _buildEmptyWarning(context) : _buildParkedVehicleList(),
      ],
    );
  }

  Widget _buildEmptyWarning(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 40),
        Image.asset(
          'assets/images/undraw_No_data_re_kwbl.png',
          width: MediaQuery.of(context).size.width / 2,
        ),
        const SizedBox(height: 10),
        Text('NENHUM VEÍCULO ESTACIONADO', style: TextStyle(color: AppColors.textColor)),
      ],
    );
  }

  Widget _buildParkedVehicleList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => ParkedVehicleTile(parkingLot.parkedVehicles[index]),
      itemCount: parkingLot.parkedVehicles.length,
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
  ),
  ParkedVehicle(
    id: QRCode('2'),
    title: 'Fiat Palio',
    licensePlate: 'DMB2871',
    color: VehicleColor.gray,
    checkIn: DateTime(2020, 01, 19, 12, 30),
    checkOut: DateTime(2020, 01, 19, 12, 30),
    observations: '',
  ),
  ParkedVehicle(
    id: QRCode('3'),
    title: 'Hyundai i30',
    licensePlate: 'ABC1234',
    color: VehicleColor.red,
    checkIn: DateTime(2020, 01, 19, 12, 30),
    checkOut: DateTime(2020, 01, 19, 12, 30),
    observations: '',
  ),
];
