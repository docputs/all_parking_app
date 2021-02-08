import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/presentation/check_out/bloc/check_out_bloc.dart';
import 'package:all_parking/features/parking/presentation/check_out/screens/components/check_out_steps.dart';
import 'package:all_parking/features/parking/presentation/check_out/screens/components/check_out_summary_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:all_parking/res/theme.dart';
import 'package:all_parking/widgets/default_button.dart';
import 'package:all_parking/widgets/default_section_title.dart';
import 'package:flutter/material.dart';

class CheckOutBody extends StatelessWidget {
  const CheckOutBody({Key key, @required this.vehicle}) : super(key: key);

  final ParkedVehicle vehicle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DefaultSectionTitle('Resumo'),
        CheckOutSummaryCard(vehicle),
        const SizedBox(height: 40),
        const DefaultSectionTitle('Observações'),
        _buildObservationsField(),
        const SizedBox(height: 40),
        const DefaultSectionTitle('Mais detalhes'),
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
              text: 'CONFIRMAR SAÍDA',
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
        vehicle.observations.isEmpty ? 'Nenhuma observação' : vehicle.observations,
        style: const TextStyle(color: AppColors.textColor),
      ),
    );
  }
}
