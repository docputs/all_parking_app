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

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<ParkingLotSelectorBloc>()..add(const ParkingLotSelectorEvent.started())),
        BlocProvider(create: (context) => getIt<HomeBloc>()),
        BlocProvider(create: (context) => getIt<AddParkingLotBloc>()),
      ],
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            unauthenticated: (_) {
              Navigator.of(context).pushReplacementNamed(Constants.signInRoute);
            },
            orElse: () {},
          );
        },
        child: AppScaffold(
          customAppBar: _buildCustomAppBar(context),
          drawer: Drawer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Text('LOGOUT'),
                  onPressed: () {
                    context.read<AuthBloc>().add(const AuthEvent.signedOut());
                  },
                ),
              ],
            ),
          ),
          scrollable: true,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.directions_car),
          ),
          body: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox(),
                loading: () => const CircularProgressIndicator(),
                success: (parkingLot) => ParkingLotDashboard(parkingLot),
                error: (failure) => Text('$failure'),
              );
            },
          ),
        ),
      ),
    );
  }

  AppBar _buildCustomAppBar(BuildContext context) {
    return AppBar(
      title: Text('Estacionamento X'),
      actions: [
        BlocBuilder<ParkingLotSelectorBloc, ParkingLotSelectorState>(
          builder: (context, state) {
            return state.maybeWhen(
              success: (parkingLots) {
                return IconButton(
                  icon: Icon(parkingLots.isEmpty ? Icons.add : Icons.place),
                  onPressed: () {
                    if (parkingLots.isEmpty) {
                      Navigator.of(context).pushNamed(Constants.addParkingLotRoute).then((value) {
                        if (value != null) FlushbarHelper.createInformation(message: ' salvo com sucesso!').show(context);
                      });
                    } else {
                      print(parkingLots);
                      Navigator.of(context).pushNamed(Constants.selectParkingLotRoute);
                    }
                  },
                );
              },
              orElse: () => const SizedBox(),
            );
          },
        ),
      ],
    );
  }
}
