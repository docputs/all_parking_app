import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/res/constants.dart';
import 'package:all_parking/res/messages.dart';
import 'package:all_parking/res/theme.dart';
import 'package:flutter/material.dart';

class CheckOutSteps extends StatelessWidget {
  final ParkedVehicle vehicle;

  CheckOutSteps(this.vehicle, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildCheckPoint(icon: Icons.south_east, iconColor: AppColors.checkColor, headerLabel: 'Entrada'),
        Container(
          margin: EdgeInsets.only(right: 285),
          height: 60,
          width: 1,
          color: AppColors.textColor,
        ),
        _buildCheckPoint(icon: Icons.north_east, iconColor: AppColors.errorColor, headerLabel: 'Saída'),
      ],
    );
  }

  Widget _buildCheckPoint({
    @required IconData icon,
    @required Color iconColor,
    @required String headerLabel,
  }) {
    return Row(
      children: [
        _buildCheckCard(icon: icon, color: iconColor),
        const Spacer(),
        _buildDateAndTimeLabels(headerLabel),
        const Spacer(flex: 3),
      ],
    );
  }

  Column _buildDateAndTimeLabels(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textColor)),
        const SizedBox(height: 10),
        ...Messages.getDateAndTime(vehicle)
            .entries
            .map((e) => Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(e.key, color: AppColors.textColor),
                    const SizedBox(width: 10),
                    Text(e.value, style: const TextStyle(fontSize: 16)),
                  ],
                ))
            .toList(),
      ],
    );
  }

  Widget _buildCheckCard({@required IconData icon, @required Color color}) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: Constants.defaultBorderRadius),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Icon(icon, color: color, size: 30),
      ),
    );
  }
}
