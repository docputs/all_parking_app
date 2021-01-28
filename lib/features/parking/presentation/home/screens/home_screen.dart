import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/presentation/add_parking_lot/bloc/add_parking_lot_bloc.dart';
import 'package:all_parking/features/parking/presentation/home/bloc/home_bloc.dart';
import 'package:all_parking/features/parking/presentation/home/bloc/parking_lot_selector/parking_lot_selector_bloc.dart';
import 'package:all_parking/features/parking/presentation/home/screens/components/parking_lot_dashboard.dart';
import 'package:all_parking/res/constants.dart';
import 'package:all_parking/widgets/no_parking_lots_found.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../service_locator.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../../../../auth/presentation/auth_bloc.dart';
import 'components/default_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          unauthenticated: (_) => Navigator.of(context).pushReplacementNamed(Constants.signInRoute),
          orElse: () {},
        );
      },
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt<HomeBloc>()..add(const HomeEvent.fetchRequested())),
          BlocProvider(create: (context) => getIt<AddParkingLotBloc>()),
        ],
        child: AppScaffold(
          customAppBar: _buildCustomAppBar(),
          drawer: const DefaultDrawer(),
          floatingActionButton: _buildCustomFAB(),
          body: _buildBody(),
        ),
      ),
    );
  }

  AppBar _buildCustomAppBar() {
    return AppBar(
      title: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Text('Carregando...'),
            success: (parkingLot) => Text(parkingLot.title),
            error: (f) => Text(f.message),
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

  Widget _buildCustomFAB() {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.directions_car),
    );
  }

  Widget _buildBody() {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.when(
          initial: () => const NoParkingLotsFound(),
          loading: () => const Center(child: CircularProgressIndicator()),
          success: (parkingLot) => ParkingLotDashboard(parkingLot),
          error: (f) => Text(f.message),
        );
      },
    );
  }

  void _calculateAppBarNavigation(BuildContext context, List<ParkingLot> parkingLots) {
    if (parkingLots.isEmpty) {
      Navigator.of(context).pushNamed(Constants.addParkingLotRoute).then((value) {
        if (value != null) {
          final parkingLot = value as ParkingLot;
          context.read<HomeBloc>().add(HomeEvent.watchStarted(parkingLot));
          FlushbarHelper.createInformation(message: '${parkingLot.title} salvo com sucesso!').show(context);
        }
      });
    } else {
      Navigator.of(context).pushNamed(Constants.selectParkingLotRoute).then((parkingLot) {
        if (parkingLot != null) context.read<HomeBloc>().add(HomeEvent.watchStarted(parkingLot));
      });
    }
  }
}
