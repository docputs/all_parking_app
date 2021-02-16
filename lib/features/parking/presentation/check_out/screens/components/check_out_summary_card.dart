import 'package:all_parking/features/parking/presentation/check_out/bloc/check_out_bloc.dart';
import 'package:all_parking/features/parking/presentation/check_out/screens/components/text_field_alert_dialog.dart';
import 'package:all_parking/widgets/current_parking_lot_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../../../res/messages.dart';
import '../../../../../../res/theme.dart';
import '../../../../../../utils/format_utils.dart';
import '../../../../../../widgets/default_card.dart';
import '../../../../../../widgets/default_text_button.dart';
import '../../../../../../widgets/vehicle_color_display.dart';
import '../../../../domain/entities/parked_vehicle.dart';

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
    return BlocBuilder<CheckOutBloc, CheckOutState>(
      buildWhen: (p, c) => p.overridenPricePerHour != c.overridenPricePerHour,
      builder: (context, state) {
        return CurrentParkingLotBuilder(
          builder: (parkingLot) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Messages.pricePerHourLabel(state.overridenPricePerHour ?? parkingLot.pricePerHour),
                style: const TextStyle(fontSize: 16),
              ),
              DefaultTextButton(
                text: Messages.checkOutChangePricePerHourButton,
                onPressed: () => _showNewPriceDialog(context),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildPriceAndElapsedTime() {
    return BlocBuilder<CheckOutBloc, CheckOutState>(
      buildWhen: (p, c) => p.overridenPricePerHour != c.overridenPricePerHour,
      builder: (context, state) => CurrentParkingLotBuilder(
        builder: (parkingLot) => Row(
          children: [
            Text(
              FormatUtils.formatCurrency(vehicle.calculateAmountToPay(state.overridenPricePerHour ?? parkingLot.pricePerHour)),
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
        ),
      ),
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

  Future<bool> _showNewPriceDialog(BuildContext context) {
    return showDialog<bool>(
      context: context,
      child: TextFieldAlertDialog(
        title: Messages.checkOutNewPriceDialogTitle,
        fieldDescription: Messages.checkOutNewPriceDialogDescription,
        rightButtonLabel: Messages.checkOutNewPriceDialogRightButton,
        leftButtonLabel: Messages.checkOutNewPriceDialogLeftButton,
        onChanged: (value) => context.read<CheckOutBloc>().add(CheckOutEvent.changedPricePerHour(value)),
      ),
    );
  }
}
