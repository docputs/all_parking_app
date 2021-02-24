import 'package:all_parking/features/parking/presentation/home/bloc/vehicles_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension BuildContextX on BuildContext {
  VehiclesWatcherBloc get parkedVehicles => this.read<VehiclesWatcherBloc>();
}
