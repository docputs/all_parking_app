import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../res/messages.dart';
import '../../../../../../res/theme.dart';
import '../../../../../../widgets/default_button.dart';
import '../../../../../../widgets/default_section_title.dart';
import '../../../../domain/entities/parked_vehicle.dart';
import '../../bloc/check_out_bloc.dart';
import 'check_out_steps.dart';
import 'check_out_summary_card.dart';

class CheckOutBody extends StatelessWidget {
  const CheckOutBody({Key key, @required this.vehicle}) : super(key: key);

  final ParkedVehicle vehicle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DefaultSectionTitle(Messages.checkOutSummaryHeader),
        CheckOutSummaryCard(vehicle),
        const SizedBox(height: 40),
        const DefaultSectionTitle(Messages.checkOutObservationsHeader),
        _buildObservationsField(),
        const SizedBox(height: 40),
        const DefaultSectionTitle(Messages.checkOutMoreDetailsHeader),
        CheckOutSteps(vehicle),
        const SizedBox(height: 40),
        _buildLoadingOrSubmitButton(context),
      ],
    );
  }

  Widget _buildLoadingOrSubmitButton(BuildContext context) {
    return BlocBuilder<CheckOutBloc, CheckOutState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () {
            return DefaultButton(
              text: Messages.checkOutSubmitButton,
              onPressed: () => context.read<CheckOutBloc>().add(CheckOutEvent.submitted(vehicle)),
            );
          },
          loading: (_) => const CircularProgressIndicator(),
        );
      },
    );
  }

  Widget _buildObservationsField() {
    return SizedBox(
      width: double.infinity,
      child: Text(
        vehicle.observations.isEmpty ? Messages.checkOutNoObservations : vehicle.observations,
        style: const TextStyle(color: AppColors.textColor),
      ),
    );
  }
}
