import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/presentation/current_parking_lot.dart';
import 'package:all_parking/res/messages.dart';
import 'package:all_parking/res/theme.dart';
import 'package:all_parking/utils/format_utils.dart';
import 'package:all_parking/widgets/default_card.dart';
import 'package:all_parking/widgets/default_text_button.dart';
import 'package:all_parking/widgets/vehicle_color_display.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
              text: 'ALTERAR',
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
