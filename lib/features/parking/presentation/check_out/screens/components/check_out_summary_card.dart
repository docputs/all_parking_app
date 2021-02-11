import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../res/messages.dart';
import '../../../../../../res/theme.dart';
import '../../../../../../utils/format_utils.dart';
import '../../../../../../widgets/default_card.dart';
import '../../../../../../widgets/default_text_button.dart';
import '../../../../../../widgets/vehicle_color_display.dart';
import '../../../../domain/entities/parked_vehicle.dart';
import '../../../current_parking_lot.dart';

class CheckOutSummaryCard extends StatelessWidget {
  final ParkedVehicle vehicle;

  const CheckOutSummaryCard(this.vehicle, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildVehicleDetailsRow(),
          const SizedBox(height: 20),
          _buildPriceAndElapsedTime(),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 10),
          _buildPricePerHourLabel(),
        ],
      ),
    );
  }

  Widget _buildPricePerHourLabel() {
    return Consumer<CurrentParkingLot>(
      builder: (context, currentParkingLot, child) {
        final parkingLot = currentParkingLot.value.getOrElse(() => throw Exception('Nenhum estacionamento selecionado'));
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(Messages.pricePerHourLabel(parkingLot.pricePerHour), style: const TextStyle(fontSize: 16)),
            DefaultTextButton(
              text: Messages.checkOutChangePricePerHourButton,
              onPressed: () {},
            ),
          ],
        );
      },
    );
  }

  Widget _buildPriceAndElapsedTime() {
    return Row(
      children: [
        Text(
          FormatUtils.formatCurrency(vehicle.calculateAmountToPay(10)),
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Icon(Icons.access_time),
        ),
        Text(
          Messages.elapsedTime(vehicle),
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  Widget _buildVehicleDetailsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              vehicle.title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.textColor),
            ),
            Text(vehicle.licensePlate, style: const TextStyle(fontSize: 16)),
          ],
        ),
        VehicleColorDisplay(vehicle.color, size: const Size(60, 60)),
      ],
    );
  }
}
