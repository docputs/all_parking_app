import 'package:all_parking/widgets/validation_form_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../res/messages.dart';
import '../../../../../../utils/validators.dart';
import '../../../../../../widgets/default_button.dart';
import '../../../../../../widgets/default_section_title.dart';
import '../../../../../../widgets/parking_lot_text_form_field.dart';
import '../../../../../../widgets/static_text_form_field.dart';
import '../../bloc/add_parking_lot_bloc.dart';

class AddParkingLotForm extends StatefulWidget {
  const AddParkingLotForm({Key key}) : super(key: key);

  @override
  _AddParkingLotFormState createState() => _AddParkingLotFormState();
}

class _AddParkingLotFormState extends State<AddParkingLotForm> {
  TextEditingController _titleController;
  TextEditingController _cepController;
  TextEditingController _spotsController;
  TextEditingController _priceController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _cepController = TextEditingController();
    _spotsController = TextEditingController();
    _priceController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DefaultSectionTitle(Messages.addParkingLotGeneralData),
        _buildTitleField(),
        _buildSpotsAndPriceFields(),
        const SizedBox(height: 40),
        const DefaultSectionTitle(Messages.addParkingLotAddress),
        _buildCepField(),
        _buildAddressField(),
        _buildCityAndStateField(),
        const SizedBox(height: 40),
        _buildSubmitButton(context),
      ],
    );
  }

  Widget _buildTitleField() {
    return BlocConsumer<AddParkingLotBloc, AddParkingLotState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) => _titleController.text = state.parkingLot.title,
      buildWhen: (p, c) => p.parkingLot.title != c.parkingLot.title || p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) {
        return ParkingLotTextFormField(
          labelText: Messages.addParkingLotTitleLabel,
          state: state as ValidationFormState,
          onChanged: (value) => context.read<AddParkingLotBloc>().add(AddParkingLotEvent.changedTitle(value)),
          validationEither: Validators.validateParkingLotTitle,
          controller: _titleController,
        );
      },
    );
  }

  Widget _buildCepField() {
    return BlocConsumer<AddParkingLotBloc, AddParkingLotState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) => _cepController.text = state.parkingLot.address.cep,
      buildWhen: (p, c) => p.parkingLot.address.cep != c.parkingLot.address.cep || p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) {
        return ParkingLotTextFormField(
          labelText: Messages.addParkingLotCepLabel,
          state: state as ValidationFormState,
          onChanged: (value) => context.read<AddParkingLotBloc>().add(AddParkingLotEvent.changedCep(value)),
          validationEither: Validators.validateCep,
          keyboardType: TextInputType.number,
          controller: _cepController,
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
          labelText: Messages.addParkingLotStreetLabel,
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
                labelText: Messages.addParkingLotCityLabel,
                value: state.parkingLot.address.city,
              ),
            ),
            const SizedBox(width: 40),
            Expanded(
              child: StaticTextFormField(
                key: ValueKey(state.parkingLot.address),
                labelText: Messages.addParkingLotUfLabel,
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
    return BlocConsumer<AddParkingLotBloc, AddParkingLotState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) => _spotsController.text = state.parkingLot.availableSpots.toString(),
      buildWhen: (p, c) => p.parkingLot.availableSpots != c.parkingLot.availableSpots || p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) => ParkingLotTextFormField(
        labelText: Messages.addParkingLotSpotsLabel,
        state: state as ValidationFormState,
        onChanged: (value) => context.read<AddParkingLotBloc>().add(AddParkingLotEvent.changedAvailableSpots(value)),
        validationEither: Validators.validateAvailableSpotsField,
        keyboardType: TextInputType.number,
        controller: _spotsController,
      ),
    );
  }

  Widget _buildPricePerHourField() {
    return BlocConsumer<AddParkingLotBloc, AddParkingLotState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) => _priceController.text = state.parkingLot.pricePerHour.toString(),
      buildWhen: (p, c) => p.parkingLot.pricePerHour != c.parkingLot.pricePerHour || p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) => ParkingLotTextFormField(
        labelText: Messages.addParkingLotPricePerHourLabel,
        state: state as ValidationFormState,
        onChanged: (value) => context.read<AddParkingLotBloc>().add(AddParkingLotEvent.changedPricePerHour(value)),
        validationEither: Validators.validatePricePerHour,
        keyboardType: TextInputType.number,
        controller: _priceController,
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
                text: Messages.addParkingLotSubmitButton,
                onPressed: () => context.read<AddParkingLotBloc>().add(const AddParkingLotEvent.parkingLotSubmitted()),
              );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _titleController.dispose();
    _cepController.dispose();
    _spotsController.dispose();
    _priceController.dispose();
  }
}
