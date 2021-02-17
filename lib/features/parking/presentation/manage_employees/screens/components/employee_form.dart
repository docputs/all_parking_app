import 'package:all_parking/features/auth/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'package:all_parking/features/parking/presentation/manage_employees/bloc/add_employee/add_employee_bloc.dart';
import 'package:all_parking/features/parking/presentation/manage_employees/screens/components/parking_lot_dropdown_field.dart';
import 'package:all_parking/res/messages.dart';
import 'package:all_parking/widgets/default_button.dart';
import 'package:all_parking/widgets/parking_lot_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeeForm extends StatelessWidget {
  const EmployeeForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildDisplayNameField(),
        const SizedBox(height: 10),
        _buildParkingLotField(),
        const SizedBox(height: 40),
        _buildSubmitButton(),
      ],
    );
  }

  Widget _buildDisplayNameField() {
    return BlocBuilder<AddEmployeeBloc, AddEmployeeState>(
      buildWhen: (p, c) => p.employee.displayName != c.employee.displayName,
      builder: (context, state) => ParkingLotTextFormField(
        labelText: Messages.addEmployeeNameFieldLabel,
        state: state as ValidationFormState,
        onChanged: (value) => context.read<AddEmployeeBloc>().add(AddEmployeeEvent.changedName(value)),
      ),
    );
  }

  Widget _buildParkingLotField() {
    return BlocBuilder<AddEmployeeBloc, AddEmployeeState>(
      buildWhen: (p, c) => p.employee.parkingLotId != c.employee.parkingLotId,
      builder: (context, state) => ParkingLotDropdownField(state.employee.parkingLotId),
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
