import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

import '../../../../../../res/constants.dart';
import '../../../../../../res/theme.dart';
import '../../../../../../widgets/default_dropdown_field.dart';
import '../../../../domain/entities/associated_parking_lot.dart';
import '../../../../domain/entities/parking_lot.dart';
import '../../../bloc/parking_lots/manager/manager_parking_lots_bloc.dart';
import '../../../bloc/parking_lots/parking_lots_state.dart';
import '../../bloc/add_employee/add_employee_bloc.dart';

class ParkingLotDropdownField extends StatelessWidget {
  final AssociatedParkingLot associatedParkingLot;

  const ParkingLotDropdownField(this.associatedParkingLot, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ManagerParkingLotsBloc, ParkingLotsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          loading: () => _buildLoadingPlaceholder(),
          success: (parkingLots) => _buildDropdownField(parkingLots, context),
          error: (f) => Text(f.message),
        );
      },
    );
  }

  Widget _buildLoadingPlaceholder() {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: Constants.defaultBorderRadius,
        color: AppColors.textColor.withOpacity(.2),
      ),
    );
  }

  Widget _buildDropdownField(KtList<ParkingLot> parkingLots, BuildContext context) {
    return DefaultDropdownField(
      parkingLots.map((parkingLot) => _buildDropdownItem(parkingLot)).asList(),
      onChanged: (value) => context.read<AddEmployeeBloc>().add(AddEmployeeEvent.changedParkingLot(value)),
      value: parkingLots.find((parkingLot) => parkingLot.id == associatedParkingLot.id),
      placeholderText: 'Estacionamento',
      isExpanded: true,
    );
  }

  DropdownMenuItem<ParkingLot> _buildDropdownItem(ParkingLot parkingLot) {
    return DropdownMenuItem(
      key: ValueKey(parkingLot.id),
      value: parkingLot,
      child: Text(parkingLot.title),
    );
  }
}
