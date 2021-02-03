import 'package:all_parking/features/parking/presentation/check-in/bloc/check_in_bloc.dart';
import 'package:all_parking/features/parking/presentation/check-in/screens/components/owner_data_form.dart';
import 'package:all_parking/features/parking/presentation/check-in/screens/components/vehicle_data_form.dart';
import 'package:all_parking/res/messages.dart';
import 'package:all_parking/widgets/default_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckInForm extends StatelessWidget {
  const CheckInForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Dados do veículo', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        const SizedBox(height: 10),
        const VehicleDataForm(),
        const SizedBox(height: 40),
        Text('Dados do cliente (opcional)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        const SizedBox(height: 10),
        const OwnerDataForm(),
        const SizedBox(height: 40),
        _buildSubmitButton(context),
      ],
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    return DefaultButton(
      text: Messages.checkInVehicleSubmitButton,
      onPressed: () => context.read<CheckInBloc>().add(const CheckInEvent.submitted()),
    );
  }
}
