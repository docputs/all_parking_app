import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/domain/entities/parked_vehicles_list.dart';
import 'package:all_parking/features/parking/presentation/bloc/vehicles_watcher/active_vehicles/active_vehicles_watcher_bloc.dart';
import 'package:all_parking/features/parking/presentation/bloc/vehicles_watcher/vehicles_watcher_bloc.dart';
import 'package:all_parking/features/parking/presentation/home/screens/components/watcher_failure_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActiveVehiclesBuilder extends StatelessWidget {
  final Widget Function(ParkedVehiclesList vehicles) onSuccess;
  final Widget Function(ParkingFailure f) onError;

  const ActiveVehiclesBuilder({
    Key key,
    @required this.onSuccess,
    this.onError,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActiveVehiclesWatcherBloc, VehiclesWatcherState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          loading: () => const Center(child: CircularProgressIndicator()),
          success: onSuccess,
          error: (f) {
            if (onError == null) return WatcherFailureWidget(f);
            return onError(f);
          },
        );
      },
    );
  }
}
