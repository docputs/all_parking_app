import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/vehicles_watcher/active_vehicles/active_vehicles_watcher_bloc.dart';
import 'bloc/vehicles_watcher/inactive_vehicles/inactive_vehicles_watcher_bloc.dart';

extension BuildContextX on BuildContext {
  ActiveVehiclesWatcherBloc get activeVehicles => this.read<ActiveVehiclesWatcherBloc>();
  InactiveVehiclesWatcherBloc get inactiveVehicles => this.read<InactiveVehiclesWatcherBloc>();
}
