import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../res/messages.dart';
import '../../../../../../utils/validators.dart';
import '../../../../../../widgets/parking_lot_text_form_field.dart';
import '../../../../../auth/presentation/sign_up/bloc/sign_up_bloc.dart';
import '../../bloc/check_in_bloc.dart';
import 'vehicle_color_dropdown_field.dart';
import 'vehicle_type_dropdown_field.dart';

class VehicleDataForm extends StatelessWidget {
  const VehicleDataForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildLabelAndColorField(),
        _buildPlateAndVehicleTypeField(),
        _buildObservationsField(),
      ],
    );
  }

  Widget _buildLabelAndColorField() {
    return Row(
      children: [
        Expanded(child: _buildVehicleLabelField()),
        const SizedBox(width: 20),
        _buildVehicleColorField(),
      ],
    );
  }

  Widget _buildVehicleLabelField() {
    return BlocBuilder<CheckInBloc, CheckInState>(
      buildWhen: (p, c) => p.vehicle.title != c.vehicle.title || p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) => ParkingLotTextFormField(
        labelText: Messages.checkInVehicleBrandLabel,
        state: state as ValidationFormState,
        validationEither: Validators.validateVehicleLabel,
        onChanged: (value) => context.read<CheckInBloc>().add(CheckInEvent.changedLabel(value)),
      ),
    );
  }

  Widget _buildVehicleColorField() {
    return BlocBuilder<CheckInBloc, CheckInState>(
      buildWhen: (p, c) => p.vehicle.color != c.vehicle.color,
      builder: (context, state) => VehicleColorDropdownField(state.vehicle.color),
    );
  }

  Widget _buildPlateAndVehicleTypeField() {
    return Row(
      children: [
        Expanded(child: _buildLicensePlateField()),
        const SizedBox(width: 20),
        _buildVehicleTypeField(),
      ],
    );
  }

  Widget _buildLicensePlateField() {
    return BlocBuilder<CheckInBloc, CheckInState>(
      buildWhen: (p, c) => p.vehicle.licensePlate != c.vehicle.licensePlate || p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) => ParkingLotTextFormField(
        labelText: Messages.checkInVehicleLicensePlateLabel,
        state: state as ValidationFormState,
        validationEither: Validators.validateLicensePlate,
        onChanged: (value) => context.read<CheckInBloc>().add(CheckInEvent.changedLicensePlate(value)),
        textCapitalization: TextCapitalization.characters,
      ),
    );
  }

  Widget _buildVehicleTypeField() {
    return BlocBuilder<CheckInBloc, CheckInState>(
      buildWhen: (p, c) => p.vehicle.type != c.vehicle.type,
      builder: (context, state) => VehicleTypeDropdownField(state.vehicle.type),
    );
  }

  Widget _buildObservationsField() {
    return BlocBuilder<CheckInBloc, CheckInState>(
      buildWhen: (p, c) => p.vehicle.observations != c.vehicle.observations || p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) => ParkingLotTextFormField(
        labelText: Messages.checkInVehicleObservationsLabel,
        state: state as ValidationFormState,
        validationEither: Validators.validateObservations,
        onChanged: (value) => context.read<CheckInBloc>().add(CheckInEvent.changedObservations(value)),
        keyboardType: TextInputType.multiline,
        multiline: true,
      ),
    );
  }
}
