import 'package:all_parking/features/parking/presentation/manage_employees/bloc/add_employee/add_employee_bloc.dart';
import 'package:all_parking/widgets/default_dropdown_field.dart';
import 'package:all_parking/widgets/parking_lot_watcher_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

class ParkingLotDropdownField extends StatelessWidget {
  final String parkingLotId;

  const ParkingLotDropdownField(this.parkingLotId, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ParkingLotWatcherBuilder(
      onSuccess: (parkingLots) => DefaultDropdownField(
        parkingLots
            .map(
              (parkingLot) => DropdownMenuItem(
                key: ValueKey(parkingLot.id),
                value: parkingLot,
                child: Text(parkingLot.title),
              ),
            )
            .asList(),
        onChanged: (value) => context.read<AddEmployeeBloc>().add(AddEmployeeEvent.changedParkingLot(value)),
        value: parkingLots.find((parkingLot) => parkingLot.id == parkingLotId),
        placeholderText: 'Estacionamento',
      ),
    );
  }
}
