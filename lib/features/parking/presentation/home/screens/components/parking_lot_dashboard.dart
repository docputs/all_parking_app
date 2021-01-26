import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/res/messages.dart';
import 'package:all_parking/res/theme.dart';
import 'package:all_parking/utils/car_color_converter.dart';
import 'package:flutter/material.dart';

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
          'Cartões',
          style: TextStyle(
            fontSize: 12,
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Card(
          elevation: 3,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: AppColors.accentColor, width: 15)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(Messages.remainingCards(parkingLot), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                    Text(Messages.usedCards(parkingLot), style: TextStyle(color: AppColors.textColor, fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 40),
        Text(
          'Veículos estacionados',
          style: TextStyle(
            fontSize: 12,
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            final vehicle = parkedVehicles[index];
            return ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Text(vehicle.title),
              subtitle: Text(vehicle.licensePlate),
              leading: CircleAvatar(backgroundColor: VehicleColorConverter.convert(vehicle.color)),
              trailing: Icon(Icons.arrow_forward_ios, size: 18),
            );
          },
          itemCount: 3,
          shrinkWrap: true,
        ),
      ],
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
