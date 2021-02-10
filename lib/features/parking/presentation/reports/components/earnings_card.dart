import 'package:all_parking/features/parking/presentation/reports/view_models/reports_view_model.dart';
import 'package:all_parking/res/theme.dart';
import 'package:all_parking/utils/format_utils.dart';
import 'package:all_parking/widgets/default_card.dart';
import 'package:flutter/material.dart';

class EarningsCard extends StatelessWidget {
  final ReportsViewModel viewModel;
  final DateTime selectedDate;

  const EarningsCard(this.viewModel, this.selectedDate, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultCard(
      cardColor: AppColors.accentLighterColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'TOTAL FATURADO',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          const SizedBox(height: 15),
          Text(
            FormatUtils.formatCurrency(viewModel.dateEarnings(selectedDate)),
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
