import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/presentation/check-in/bloc/check_in_bloc.dart';
import 'package:all_parking/res/messages.dart';
import 'package:all_parking/res/theme.dart';
import 'package:all_parking/widgets/default_dropdown_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
