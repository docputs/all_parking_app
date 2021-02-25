import 'package:all_parking/features/parking/presentation/bloc/vehicles_watcher/active_vehicles/active_vehicles_watcher_bloc.dart';
import 'package:all_parking/features/parking/presentation/bloc/vehicles_watcher/inactive_vehicles/inactive_vehicles_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension BuildContextX on BuildContext {
  ActiveVehiclesWatcherBloc get activeVehicles => this.read<ActiveVehiclesWatcherBloc>();
  InactiveVehiclesWatcherBloc get inactiveVehicles => this.read<InactiveVehiclesWatcherBloc>();
}
