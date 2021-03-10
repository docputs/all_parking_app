import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../res/messages.dart';
import '../../../../../../widgets/default_dropdown_field.dart';
import '../../../../core/util/vehicle_color_converter.dart';
import '../../../../domain/entities/parked_vehicle.dart';
import '../../bloc/check_in_bloc.dart';

class VehicleColorDropdownField extends StatelessWidget {
  final VehicleColor value;

  const VehicleColorDropdownField(this.value, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultDropdownField(
      VehicleColor.values
          .map((color) => DropdownMenuItem(
              key: ValueKey(value),
              value: color,
              child: Row(
                children: [
                  CircleAvatar(backgroundColor: VehicleColorConverter.convert(color), radius: 12),
                  const SizedBox(width: 12),
                  Text(Messages.vehicleColorDropdownItem(color)),
                ],
              )))
          .toList(),
      onChanged: (value) => context.read<CheckInBloc>().add(CheckInEvent.changedColor(value)),
      value: value,
    );
  }
}
