import 'package:all_parking/features/parking/presentation/manage_employees/bloc/add_employee/add_employee_bloc.dart';
import 'package:all_parking/features/parking/presentation/manage_employees/screens/components/parking_lot_dropdown_field.dart';
import 'package:all_parking/res/constants.dart';
import 'package:all_parking/res/messages.dart';
import 'package:all_parking/utils/validators.dart';
import 'package:all_parking/widgets/default_button.dart';
import 'package:all_parking/widgets/default_section_title.dart';
import 'package:all_parking/widgets/parking_lot_text_form_field.dart';
import 'package:all_parking/widgets/validation_form_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeeForm extends StatelessWidget {
  const EmployeeForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DefaultSectionTitle(Messages.addEmployeeGeneralInfoHeader),
        _buildDisplayNameField(),
        _buildCpfAndPhoneNumberFields(),
        const SizedBox(height: 40),
        const DefaultSectionTitle(Messages.addEmployeeAssociatedParkingLotHeader),
        _buildParkingLotField(),
        const SizedBox(height: 40),
        _buildSubmitButton(),
      ],
    );
  }

  Widget _buildDisplayNameField() {
    return BlocBuilder<AddEmployeeBloc, AddEmployeeState>(
      buildWhen: (p, c) => p.employee.displayName != c.employee.displayName || p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) => ParkingLotTextFormField(
        labelText: Messages.addEmployeeNameFieldLabel,
        state: state as ValidationFormState,
        validationEither: Validators.validateRequiredField,
        onChanged: (value) => context.read<AddEmployeeBloc>().add(AddEmployeeEvent.changedName(value)),
      ),
    );
  }

  Widget _buildCpfAndPhoneNumberFields() {
    return Row(
      children: [
        Expanded(child: _buildCpfField()),
        const SizedBox(width: 20),
        Expanded(child: _buildPhoneNumberField()),
      ],
    );
  }

  Widget _buildCpfField() {
    return BlocBuilder<AddEmployeeBloc, AddEmployeeState>(
      buildWhen: (p, c) => p.employee.cpf != c.employee.cpf || p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) => ParkingLotTextFormField(
        labelText: Messages.addEmployeeCpfLabel,
        state: state as ValidationFormState,
        validationEither: (value) => Validators.validateCpf(value, true),
        onChanged: (value) => context.read<AddEmployeeBloc>().add(AddEmployeeEvent.changedCpf(value)),
        mask: Constants.cpfMask,
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget _buildPhoneNumberField() {
    return BlocBuilder<AddEmployeeBloc, AddEmployeeState>(
      buildWhen: (p, c) => p.employee.phoneNumber != c.employee.phoneNumber || p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) => ParkingLotTextFormField(
        labelText: Messages.addEmployeePhoneNumberLabel,
        state: state as ValidationFormState,
        validationEither: Validators.validatePhoneNumber,
        onChanged: (value) => context.read<AddEmployeeBloc>().add(AddEmployeeEvent.changedPhoneNumber(value)),
        mask: Constants.phoneNumberMask,
        keyboardType: TextInputType.phone,
      ),
    );
  }

  Widget _buildParkingLotField() {
    return BlocBuilder<AddEmployeeBloc, AddEmployeeState>(
      buildWhen: (p, c) => p.employee.parkingLot != c.employee.parkingLot || p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) => ParkingLotDropdownField(state.employee.parkingLot),
    );
  }

  Widget _buildSubmitButton() {
    return BlocBuilder<AddEmployeeBloc, AddEmployeeState>(
      buildWhen: (p, c) => p.isSubmitting != c.isSubmitting,
      builder: (context, state) {
        return state.isSubmitting
            ? const CircularProgressIndicator()
            : DefaultButton(
                text: Messages.addEmployeeSubmitButton,
                onPressed: () => context.read<AddEmployeeBloc>().add(const AddEmployeeEvent.submitted()),
              );
      },
    );
  }
}
