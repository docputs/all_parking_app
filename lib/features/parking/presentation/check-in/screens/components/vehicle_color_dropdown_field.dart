import 'package:all_parking/features/parking/core/util/car_color_converter.dart';
import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/presentation/check-in/bloc/check_in_bloc.dart';
import 'package:all_parking/res/messages.dart';
import 'package:all_parking/widgets/default_dropdown_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
