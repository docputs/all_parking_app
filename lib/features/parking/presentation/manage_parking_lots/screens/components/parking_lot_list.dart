import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/presentation/manage_parking_lots/bloc/manage_parking_lots_bloc.dart';
import 'package:all_parking/widgets/default_section_title.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'manage_parking_lot_tile.dart';

class ParkingLotList extends StatelessWidget {
  final List<ParkingLot> parkingLots;

  const ParkingLotList(this.parkingLots, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ManageParkingLotsBloc, ManageParkingLotsState>(
      listener: (context, state) {
        return state.maybeWhen(
          orElse: () => null,
          success: () => FlushbarHelper.createInformation(message: 'Estacionamento removido com sucesso!').show(context),
          error: (f) => FlushbarHelper.createError(message: f.message).show(context),
        );
      },
      child: Column(
        children: [
          const DefaultSectionTitle('Seus estacionamentos'),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => ManageParkingLotTile(parkingLots[index]),
              itemCount: parkingLots.length,
            ),
          ),
        ],
      ),
    );
  }
}
