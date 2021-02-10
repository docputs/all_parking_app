import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/presentation/reports/bloc/reports_bloc.dart';
import 'package:all_parking/features/parking/presentation/reports/components/earnings_card.dart';
import 'package:all_parking/features/parking/presentation/reports/components/vehicle_report_tile.dart';
import 'package:all_parking/res/messages.dart';
import 'package:all_parking/res/theme.dart';
import 'package:all_parking/widgets/default_section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

class ReportsDashboard extends StatelessWidget {
  const ReportsDashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildDateHeader(),
        _buildEarningsCard(),
        const SizedBox(height: 40),
        const DefaultSectionTitle('Veículos estacionados'),
        _buildVehicleList(),
      ],
    );
  }

  Widget _buildVehicleList() {
    return BlocBuilder<ReportsBloc, ReportsState>(
      builder: (context, state) {
        return state.maybeWhen(
          (selectedDate, viewModel) {
            final vehicles = viewModel.parkedVehicles.fromDateTime(selectedDate);
            return vehicles.isEmpty() ? _buildNoDataToShow() : _buildList(vehicles);
          },
          orElse: () => const SizedBox(),
        );
      },
    );
  }

  Widget _buildList(KtList<ParkedVehicle> vehicles) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => VehicleReportTile(vehicles[index]),
      itemCount: vehicles.size,
      separatorBuilder: (context, index) => const Divider(),
    );
  }

  Widget _buildNoDataToShow() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60),
      child: Text('Sem dados para exibir', style: const TextStyle(color: AppColors.textColor)),
    );
  }

  Widget _buildEarningsCard() {
    return BlocBuilder<ReportsBloc, ReportsState>(
      builder: (context, state) {
        return state.maybeMap(
          (state) => EarningsCard(state.viewModel, state.selectedDate),
          orElse: () => const SizedBox(),
        );
      },
    );
  }

  Widget _buildDateHeader() {
    return BlocBuilder<ReportsBloc, ReportsState>(
      buildWhen: (p, c) => p.selectedDate != c.selectedDate,
      builder: (context, state) {
        return state.maybeMap(
          (state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Messages.selectedDateLabel(state.selectedDate),
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(Icons.calendar_today, color: AppColors.accentColor),
                  onPressed: () => _selectDate(context, state),
                ),
              ],
            );
          },
          orElse: () => const SizedBox(),
        );
      },
    );
  }

  Future<void> _selectDate(BuildContext context, ReportsState state) {
    final today = DateTime.now();
    return showDatePicker(
      context: context,
      initialDate: state.selectedDate,
      firstDate: today.subtract(const Duration(days: 31)),
      lastDate: today,
    ).then((value) {
      if (value != null) context.read<ReportsBloc>().add(ReportsEvent.dateSelected(value));
    });
  }
}
