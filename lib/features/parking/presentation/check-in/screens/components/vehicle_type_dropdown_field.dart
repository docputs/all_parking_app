import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../res/messages.dart';
import '../../../../../../res/theme.dart';
import '../../../../../../widgets/default_dropdown_field.dart';
import '../../../../domain/entities/parked_vehicle.dart';
import '../../bloc/check_in_bloc.dart';

class VehicleTypeDropdownField extends StatelessWidget {
  final VehicleType value;

  const VehicleTypeDropdownField(this.value, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultDropdownField(
      VehicleType.values
          .map((type) => DropdownMenuItem(
                child: Row(
                  children: [
                    Icon(type == VehicleType.car ? Icons.directions_car : Icons.directions_bike, color: AppColors.textColor),
                    const SizedBox(width: 12),
                    Text(Messages.vehicleTypeDropdownItem(type)),
                    const SizedBox(width: 12),
                  ],
                ),
                value: type,
              ))
          .toList(),
      onChanged: (value) => context.read<CheckInBloc>().add(CheckInEvent.changedVehicleType(value)),
      value: value,
    );
  }
}
