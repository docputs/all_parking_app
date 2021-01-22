import 'package:all_parking/features/auth/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'package:all_parking/features/parking/presentation/add_parking_lot/bloc/add_parking_lot_bloc.dart';
import 'package:all_parking/utils/validators.dart';
import 'package:all_parking/widgets/default_button.dart';
import 'package:all_parking/widgets/parking_lot_text_form_field.dart';
import 'package:all_parking/widgets/static_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../service_locator.dart';

class AddParkingLotForm extends StatelessWidget {
  const AddParkingLotForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTitleField(),
        const SizedBox(height: 10),
        _buildCepField(),
        const SizedBox(height: 10),
        _buildAddressField(),
        const SizedBox(height: 10),
        _buildCityAndStateField(),
        const SizedBox(height: 10),
        _buildSpotsAndPriceFields(),
        const SizedBox(height: 40),
        _buildSubmitButton(context),
      ],
    );
  }

  Widget _buildTitleField() {
    return BlocBuilder<AddParkingLotBloc, AddParkingLotState>(
      buildWhen: (p, c) => p.parkingLot.title != c.parkingLot.title,
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

  Widget _buildCepField() {
    return BlocBuilder<AddParkingLotBloc, AddParkingLotState>(
      buildWhen: (p, c) => p.parkingLot.address.cep != c.parkingLot.address.cep,
      builder: (context, state) {
        return ParkingLotTextFormField(
          labelText: 'CEP',
          state: state as ValidationFormState,
          onChanged: (value) => context.read<AddParkingLotBloc>().add(AddParkingLotEvent.changedCep(value)),
          validationEither: getIt<Validators>().validateCep,
          keyboardType: TextInputType.number,
        );
      },
    );
  }

  Widget _buildAddressField() {
    return BlocBuilder<AddParkingLotBloc, AddParkingLotState>(
      buildWhen: (p, c) => p.parkingLot.address.street != c.parkingLot.address.street,
      builder: (context, state) {
        return StaticTextFormField(
          key: ValueKey(state.parkingLot.address),
          labelText: 'Endereço',
          value: state.parkingLot.address.street,
        );
      },
    );
  }

  Widget _buildCityAndStateField() {
    return BlocBuilder<AddParkingLotBloc, AddParkingLotState>(
      buildWhen: (p, c) => p.parkingLot.address.city != c.parkingLot.address.city,
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              flex: 3,
              child: StaticTextFormField(
                key: ValueKey(state.parkingLot.address),
                labelText: 'Cidade',
                value: state.parkingLot.address.city,
              ),
            ),
            const SizedBox(width: 40),
            Expanded(
              child: StaticTextFormField(
                key: ValueKey(state.parkingLot.address),
                labelText: 'Estado',
                value: state.parkingLot.address.uf.toUpperCase(),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildSpotsAndPriceFields() {
    return Row(
      children: [
        Expanded(child: _buildAvailableSpotsField()),
        const SizedBox(width: 40),
        Expanded(child: _buildPricePerHourField()),
      ],
    );
  }

  Widget _buildAvailableSpotsField() {
    return BlocBuilder<AddParkingLotBloc, AddParkingLotState>(
      buildWhen: (p, c) => p.parkingLot.availableSpots != c.parkingLot.availableSpots,
      builder: (context, state) => ParkingLotTextFormField(
        labelText: 'Número de vagas',
        state: state as ValidationFormState,
        onChanged: (value) => context.read<AddParkingLotBloc>().add(AddParkingLotEvent.changedAvailableSpots(value)),
        validationEither: getIt<Validators>().validateAvailableSpotsField,
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget _buildPricePerHourField() {
    return BlocBuilder<AddParkingLotBloc, AddParkingLotState>(
      buildWhen: (p, c) => p.parkingLot.pricePerHour != c.parkingLot.pricePerHour,
      builder: (context, state) => ParkingLotTextFormField(
        labelText: 'Valor por hora',
        state: state as ValidationFormState,
        onChanged: (value) => context.read<AddParkingLotBloc>().add(AddParkingLotEvent.changedPricePerHour(value)),
        validationEither: getIt<Validators>().validatePricePerHour,
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    return BlocBuilder<AddParkingLotBloc, AddParkingLotState>(
      buildWhen: (p, c) => p.isSubmitting != c.isSubmitting,
      builder: (context, state) {
        return state.isSubmitting
            ? const CircularProgressIndicator()
            : DefaultButton(
                text: 'SALVAR',
                onPressed: () => context.read<AddParkingLotBloc>().add(const AddParkingLotEvent.parkingLotSubmitted()),
              );
      },
    );
  }
}
