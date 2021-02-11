import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../res/messages.dart';
import '../../../../../../widgets/default_alert_dialog.dart';
import '../../../../../../widgets/default_button.dart';
import '../../../../../../widgets/default_section_title.dart';
import '../../bloc/check_in_bloc.dart';
import 'owner_data_form.dart';
import 'vehicle_data_form.dart';

class CheckInForm extends StatelessWidget {
  const CheckInForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DefaultSectionTitle(Messages.checkInVehicleDataLabel),
        const VehicleDataForm(),
        const SizedBox(height: 40),
        const DefaultSectionTitle(Messages.checkInCustomerDataLabel),
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
    return showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) => DefaultAlertDialog(
        title: Messages.checkInConfirmDialogTitle,
        message: Messages.checkInConfirmDialogContent(vehicle),
        rightButtonText: Messages.checkInConfirmDialogRightButton,
        leftButtonText: Messages.checkInConfirmDialogLeftButton,
      ),
    );
  }
}
