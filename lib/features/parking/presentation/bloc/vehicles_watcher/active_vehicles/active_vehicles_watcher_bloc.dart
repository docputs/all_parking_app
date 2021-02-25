import 'package:all_parking/features/parking/domain/entities/parked_vehicles_list.dart';
import 'package:all_parking/features/parking/domain/usecases/watch_active_vehicles.dart';
import 'package:all_parking/features/parking/presentation/bloc/vehicles_watcher/vehicles_watcher_bloc.dart';
import 'package:all_parking/features/parking/presentation/current_parking_lot.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'active_vehicles_watcher_bloc.freezed.dart';
part 'active_vehicles_watcher_event.dart';
part 'active_vehicles_watcher_state.dart';

@injectable
class ActiveVehiclesWatcherBloc extends VehiclesWatcherBloc<ActiveParkedVehicles> {
  ActiveVehiclesWatcherBloc(WatchActiveVehicles watchVehicles, CurrentParkingLot currentParkingLot)
      : super(watchVehicles, currentParkingLot);
}
