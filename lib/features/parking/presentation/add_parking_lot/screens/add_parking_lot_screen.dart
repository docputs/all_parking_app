import 'package:all_parking/features/auth/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'package:all_parking/features/parking/presentation/add_parking_lot/bloc/add_parking_lot_bloc.dart';
import 'package:all_parking/utils/validators.dart';
import 'package:all_parking/widgets/app_scaffold.dart';
import 'package:all_parking/widgets/parking_lot_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../service_locator.dart';

class AddParkingLotScreen extends StatelessWidget {
  const AddParkingLotScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddParkingLotBloc>(),
      child: AppScaffold(
        title: 'Adicionar um estacionamento',
        scrollable: true,
        body: Column(children: [_buildTitleField(), _buildSpotsAndPriceFields()]),
      ),
    );
  }

  Widget _buildTitleField() {
    return BlocBuilder<AddParkingLotBloc, AddParkingLotState>(
      builder: (context, state) {
        return ParkingLotTextFormField(
          labelText: 'Nome do estacionamento',
          state: state as ValidationFormState,
          onChanged: (value) => context.read<AddParkingLotBloc>().add(AddParkingLotEvent.changedTitle(value)),
          validationEither: getIt<Validators>().validateParkingLotTitle,
        );
      },
    );
  }

  Widget _buildAddressField() {
    return BlocBuilder<AddParkingLotBloc, AddParkingLotState>(
      builder: (context, state) {
        return ParkingLotTextFormField(
          labelText: 'Nome do estacionamento',
          state: state as ValidationFormState,
          onChanged: (value) => context.read<AddParkingLotBloc>().add(AddParkingLotEvent.changedTitle(value)),
          validationEither: getIt<Validators>().validateParkingLotTitle,
        );
      },
    );
  }

  Widget _buildSpotsAndPriceFields() {
    return Row(
      children: [
        Expanded(child: _buildAvailableSpotsField()),
        Expanded(child: _buildPricePerHourField()),
      ],
    );
  }

  Widget _buildAvailableSpotsField() {
    return BlocBuilder<AddParkingLotBloc, AddParkingLotState>(
      builder: (context, state) => ParkingLotTextFormField(
        labelText: 'Número de vagas',
        state: state as ValidationFormState,
        onChanged: (value) => context.read<AddParkingLotBloc>().add(AddParkingLotEvent.changedAvailableSpots(value)),
        validationEither: getIt<Validators>().validateAvailableSpotsField,
      ),
    );
  }

  Widget _buildPricePerHourField() {
    return BlocBuilder<AddParkingLotBloc, AddParkingLotState>(
      builder: (context, state) => ParkingLotTextFormField(
        labelText: 'Valor por hora',
        state: state as ValidationFormState,
        onChanged: (value) => context.read<AddParkingLotBloc>().add(AddParkingLotEvent.changedPricePerHour(value)),
        validationEither: getIt<Validators>().validatePricePerHour,
      ),
    );
  }
}
