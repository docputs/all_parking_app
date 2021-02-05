import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/presentation/add_parking_lot/bloc/add_parking_lot_bloc.dart';
import 'package:all_parking/features/parking/presentation/home/bloc/parking_lot_watcher_bloc.dart';
import 'package:all_parking/features/parking/presentation/select_parking_lot/screens/components/parking_lot_info_tile.dart';
import 'package:all_parking/res/theme.dart';
import 'package:all_parking/widgets/app_scaffold.dart';
import 'package:all_parking/widgets/default_section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

import '../../../../../service_locator.dart';

class SelectParkingLotScreen extends StatelessWidget {
  const SelectParkingLotScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddParkingLotBloc>(),
      child: AppScaffold(
        scrollable: false,
        title: 'Selecionar estacionamento',
        body: BlocBuilder<ParkingLotWatcherBloc, ParkingLotWatcherState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox(),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (failure) => Container(height: 100, width: 100, color: AppColors.errorColor),
              success: (parkingLots) => _buildParkingLotList(parkingLots),
            );
          },
        ),
      ),
    );
  }

  Widget _buildParkingLotList(KtList<ParkingLot> parkingLots) {
    return Column(
      children: [
        const DefaultSectionTitle('Seus estacionamentos'),
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: parkingLots.size,
            itemBuilder: (context, index) => ParkingLotInfoTile(parkingLots[index]),
          ),
        ),
      ],
    );
  }
}
