import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/presentation/add_parking_lot/bloc/add_parking_lot_bloc.dart';
import 'package:all_parking/features/parking/presentation/home/bloc/home_bloc.dart';
import 'package:all_parking/features/parking/presentation/home/bloc/parking_lot_selector/parking_lot_selector_bloc.dart';
import 'package:all_parking/features/parking/presentation/home/screens/components/parking_lot_dashboard.dart';
import 'package:all_parking/res/constants.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../service_locator.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../../../../auth/presentation/auth_bloc.dart';
import 'components/default_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          unauthenticated: (_) {
            Navigator.of(context).pushReplacementNamed(Constants.signInRoute);
          },
          orElse: () {},
        );
      },
      child: AppScaffold(
        blocs: [
          getIt<HomeBloc>(),
          getIt<ParkingLotSelectorBloc>()..add(const ParkingLotSelectorEvent.started()),
          getIt<AddParkingLotBloc>(),
        ],
        customAppBar: _buildCustomAppBar(context),
        drawer: const DefaultDrawer(),
        scrollable: true,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.directions_car),
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loading: () => const Center(child: CircularProgressIndicator()),
              success: (parkingLot) => ParkingLotDashboard(parkingLot),
              error: (failure) => Text('$failure'),
            );
          },
        ),
      ),
    );
  }

  AppBar _buildCustomAppBar(BuildContext context) {
    return AppBar(
      title: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => Text('Carregando...'),
            success: (parkingLot) => Text(parkingLot.title),
            error: (failure) => Text(failure.toString()),
            orElse: () => const Text('All Parking'),
          );
        },
      ),
      actions: [
        BlocBuilder<ParkingLotSelectorBloc, ParkingLotSelectorState>(
          builder: (context, state) {
            return state.maybeWhen(
              success: (parkingLots) {
                return IconButton(
                  icon: Icon(parkingLots.isEmpty ? Icons.add : Icons.place),
                  onPressed: () => _calculateAppBarNavigation(context, parkingLots),
                );
              },
              orElse: () => const SizedBox(),
            );
          },
        ),
      ],
    );
  }

  void _calculateAppBarNavigation(BuildContext context, List<ParkingLot> parkingLots) {
    if (parkingLots.isEmpty) {
      Navigator.of(context).pushNamed(Constants.addParkingLotRoute).then((value) {
        if (value != null) FlushbarHelper.createInformation(message: ' salvo com sucesso!').show(context);
      });
    } else {
      Navigator.of(context).pushNamed(Constants.selectParkingLotRoute).then((parkingLot) {
        if (parkingLot != null) context.read<HomeBloc>().add(HomeEvent.watchStarted(parkingLot));
      });
    }
  }
}
