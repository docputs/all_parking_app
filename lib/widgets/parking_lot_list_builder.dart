import 'package:all_parking/features/parking/presentation/bloc/parking_lots/parking_lots_bloc.dart';
import 'package:all_parking/features/parking/presentation/manage_parking_lots/screens/components/parking_lot_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'no_parking_lots_found.dart';

class ParkingLotListBuilder extends StatelessWidget {
  final String headerText;
  final bool allowActions;

  const ParkingLotListBuilder({Key key, this.headerText, this.allowActions = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ParkingLotsBloc, ParkingLotsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          loading: () => const Center(child: CircularProgressIndicator()),
          success: (parkingLots) => parkingLots.isEmpty()
              ? const NoParkingLotsFound()
              : ParkingLotList(
                  parkingLots.asList(),
                  allowActions: allowActions,
                  headerText: headerText,
                ),
          error: (f) => Center(child: Text(f.message)),
        );
      },
    );
  }
}
