import 'package:flutter/material.dart';

import '../../../../../../res/theme.dart';
import '../../../../../../utils/format_utils.dart';
import '../../../../../../widgets/default_card.dart';
import '../../view_models/reports_view_model.dart';

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
