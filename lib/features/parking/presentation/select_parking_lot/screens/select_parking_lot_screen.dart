import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/presentation/current_parking_lot.dart';
import 'package:all_parking/features/parking/presentation/home/bloc/parking_lot_watcher_bloc.dart';
import 'package:all_parking/widgets/app_scaffold.dart';
import 'package:all_parking/widgets/default_list_tile.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

import '../../../../../service_locator.dart';

class SelectParkingLotScreen extends StatelessWidget {
  final currentParkingLot = getIt<CurrentParkingLot>();

  SelectParkingLotScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      scrollable: false,
      title: 'Selecionar estacionamento',
      body: BlocBuilder<ParkingLotWatcherBloc, ParkingLotWatcherState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox(),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (failure) => Container(height: 100, width: 100, color: Colors.red),
            success: (parkingLots) => _buildParkingLotList(parkingLots),
          );
        },
      ),
    );
  }

  Widget _buildParkingLotList(KtList<ParkingLot> parkingLots) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: parkingLots.size,
      itemBuilder: (context, index) {
        final parkingLot = parkingLots[index];
        return DefaultListTile(
          key: ValueKey(parkingLot.id),
          title: parkingLot.title,
          subtitle: '${parkingLot.address.street} | ${parkingLot.address.cep}',
          onTap: () {
            currentParkingLot.value = optionOf(parkingLot);
            return Navigator.of(context).pop();
          },
        );
      },
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}
