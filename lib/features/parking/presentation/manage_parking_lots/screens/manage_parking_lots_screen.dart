import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/presentation/home/bloc/parking_lot_selector/parking_lot_selector_bloc.dart';
import 'package:all_parking/features/parking/presentation/home/screens/components/default_drawer.dart';
import 'package:all_parking/features/parking/presentation/manage_parking_lots/bloc/manage_parking_lots_bloc.dart';
import 'package:all_parking/features/parking/presentation/manage_parking_lots/screens/components/manage_parking_lot_tile.dart';
import 'package:all_parking/res/constants.dart';
import 'package:all_parking/widgets/app_scaffold.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../service_locator.dart';

class ManageParkingLotsScreen extends StatelessWidget {
  const ManageParkingLotsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ManageParkingLotsBloc>(),
      child: AppScaffold(
        scrollable: false,
        drawer: const DefaultDrawer(),
        customAppBar: _buildCustomAppBar(context),
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return BlocBuilder<ParkingLotSelectorBloc, ParkingLotSelectorState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          loading: () => const Center(child: CircularProgressIndicator()),
          success: (parkingLots) => _buildParkingLotList(parkingLots),
          error: (f) => Text(f.message),
        );
      },
    );
  }

  Widget _buildParkingLotList(List<ParkingLot> parkingLots) {
    return BlocListener<ManageParkingLotsBloc, ManageParkingLotsState>(
      listener: (context, state) {
        return state.maybeWhen(
          orElse: () => null,
          success: () {
            context.read<ParkingLotSelectorBloc>().add(const ParkingLotSelectorEvent.started());
            return FlushbarHelper.createInformation(message: 'Estacionamento removido com sucesso!').show(context);
          },
          error: (f) => FlushbarHelper.createError(message: f.message).show(context),
        );
      },
      child: ListView.separated(
        itemBuilder: (context, index) => ManageParkingLotTile(parkingLots[index]),
        itemCount: parkingLots.length,
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }

  AppBar _buildCustomAppBar(BuildContext context) {
    return AppBar(
      title: Text('Gerenciar estacionamentos'),
      actions: [
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () => Navigator.of(context).pushNamed(Constants.addParkingLotRoute),
        )
      ],
    );
  }
}
