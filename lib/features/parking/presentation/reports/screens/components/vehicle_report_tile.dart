import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../res/constants.dart';
import '../../../../../../res/theme.dart';
import '../../../../../../utils/format_utils.dart';
import '../../../../domain/entities/parked_vehicle.dart';
import '../../../current_parking_lot.dart';

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
