import 'package:all_parking/features/parking/core/util/car_color_converter.dart';
import 'package:all_parking/features/parking/presentation/check-in/bloc/check_in_bloc.dart';
import 'package:all_parking/features/parking/presentation/check-in/screens/components/owner_data_form.dart';
import 'package:all_parking/features/parking/presentation/check-in/screens/components/vehicle_data_form.dart';
import 'package:all_parking/res/messages.dart';
import 'package:all_parking/widgets/default_alert_dialog.dart';
import 'package:all_parking/widgets/default_button.dart';
import 'package:all_parking/widgets/default_section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckInForm extends StatelessWidget {
  const CheckInForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DefaultSectionTitle('Dados do veículo'),
        const VehicleDataForm(),
        const SizedBox(height: 40),
        const DefaultSectionTitle('Dados do cliente (opcional)'),
        const OwnerDataForm(),
        const SizedBox(height: 40),
        _buildSubmitOrLoadingButton(context),
      ],
    );
  }

  Widget _buildSubmitOrLoadingButton(BuildContext context) {
    return BlocBuilder<CheckInBloc, CheckInState>(
      buildWhen: (p, c) => p.isSubmitting != c.isSubmitting,
      builder: (context, state) => state.isSubmitting
          ? const CircularProgressIndicator()
          : DefaultButton(
              text: Messages.checkInVehicleSubmitButton,
              onPressed: () => context.read<CheckInBloc>().add(CheckInEvent.submitted(_showConfirmDialog, context)),
            ),
    );
  }

  Future<bool> _showConfirmDialog(BuildContext context) {
    final vehicle = context.read<CheckInBloc>().state.vehicle;
    final translatedColor = VehicleColorConverter.translate(vehicle.color);
    return showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) => DefaultAlertDialog(
        title: 'Confirme os dados do veículo',
        message: '${vehicle.title}, ${vehicle.licensePlate}, $translatedColor',
        rightButtonText: 'CONTINUAR',
        leftButtonText: 'ALTERAR',
      ),
    );
  }
}
