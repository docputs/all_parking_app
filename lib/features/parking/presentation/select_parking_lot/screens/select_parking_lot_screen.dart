import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/presentation/home/bloc/parking_lot_selector/parking_lot_selector_bloc.dart';
import 'package:all_parking/widgets/app_scaffold.dart';
import 'package:all_parking/widgets/default_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectParkingLotScreen extends StatelessWidget {
  const SelectParkingLotScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      scrollable: false,
      title: 'Selecionar estacionamento',
      body: BlocBuilder<ParkingLotSelectorBloc, ParkingLotSelectorState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox(),
            error: (failure) => Container(height: 100, width: 100, color: Colors.red),
            success: (parkingLots) => _buildParkingLotList(parkingLots),
          );
        },
      ),
    );
  }

  Widget _buildParkingLotList(List<ParkingLot> parkingLots) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: parkingLots.length,
      itemBuilder: (context, index) {
        final parkingLot = parkingLots[index];
        return DefaultListTile(
          title: parkingLot.title,
          subtitle: '${parkingLot.address.street} | ${parkingLot.address.cep}',
          onTap: () => Navigator.of(context).pop(parkingLot),
        );
      },
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}
