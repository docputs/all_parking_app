import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

import '../../../../../res/messages.dart';
import '../../../../../res/theme.dart';
import '../../../../../service_locator.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../../../../../widgets/default_section_title.dart';
import '../../../../../widgets/parking_lot_watcher_builder.dart';
import '../../../domain/entities/parking_lot.dart';
import '../../add_parking_lot/bloc/add_parking_lot_bloc.dart';
import 'components/parking_lot_info_tile.dart';

class SelectParkingLotScreen extends StatelessWidget {
  const SelectParkingLotScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddParkingLotBloc>(),
      child: AppScaffold(
        scrollable: false,
        title: Messages.selectParkingLotScreenTitle,
        body: ParkingLotWatcherBuilder(
          onSuccess: (parkingLots) => _buildParkingLotList(parkingLots),
          onError: (failure) => Container(height: 100, width: 100, color: AppColors.errorColor),
        ),
      ),
    );
  }

  Widget _buildParkingLotList(KtList<ParkingLot> parkingLots) {
    return Column(
      children: [
        const DefaultSectionTitle(Messages.selectParkingLotYourParkingLotsHeader),
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
