import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/presentation/current_parking_lot.dart';
import 'package:all_parking/res/constants.dart';
import 'package:all_parking/res/theme.dart';
import 'package:all_parking/utils/format_utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VehicleReportTile extends StatelessWidget {
  final ParkedVehicle vehicle;

  const VehicleReportTile(this.vehicle, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final parkingLot = context.watch<CurrentParkingLot>().value.getOrElse(() => null);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Text(vehicle.licensePlate, style: const TextStyle(fontSize: 16)),
          const Spacer(),
          _buildMiddleDisplay(),
          const Spacer(),
          Text(
            FormatUtils.formatCurrency(vehicle.calculateAmountToPay(parkingLot.pricePerHour)),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildMiddleDisplay() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      decoration: BoxDecoration(
        // color: AppColors.accentLighterColor,
        border: Border.all(width: 1, color: AppColors.primaryColor),
        borderRadius: Constants.defaultBorderRadius,
      ),
      child: Row(
        children: [
          Text(FormatUtils.formatHour(vehicle.checkIn)),
          Icon(Icons.arrow_right_alt),
          Text(FormatUtils.formatHour(vehicle.checkOut)),
        ],
      ),
    );
  }
}
