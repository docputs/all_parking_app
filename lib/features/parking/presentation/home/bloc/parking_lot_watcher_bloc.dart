import 'dart:async';

import 'package:all_parking/app_config.dart';
import 'package:all_parking/features/parking/domain/usecases/watch_parking_lot.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../../../../service_locator.dart';
import '../../../core/errors/parking_failure.dart';
import '../../../domain/entities/parking_lot.dart';
import '../../../domain/usecases/watch_all_parking_lots.dart';
import '../../current_parking_lot.dart';

part 'parking_lot_watcher_bloc.freezed.dart';
part 'parking_lot_watcher_event.dart';
part 'parking_lot_watcher_state.dart';

@injectable
class ParkingLotWatcherBloc extends Bloc<ParkingLotWatcherEvent, ParkingLotWatcherState> {
  final WatchAllParkingLots _watchAllParkingLots;
  final WatchParkingLot _watchParkingLot;

  ParkingLotWatcherBloc(this._watchAllParkingLots, this._watchParkingLot) : super(_Initial());

  final currentParkingLot = getIt<CurrentParkingLot>();
  StreamSubscription<Either> _subscription;

  @override
  Stream<ParkingLotWatcherState> mapEventToState(ParkingLotWatcherEvent event) async* {
    yield* event.when(
      watchStarted: _mapWatchStarted,
      updateReceived: _mapUpdateReceived,
    );
  }

  Stream<ParkingLotWatcherState> _mapWatchStarted() async* {
    yield ParkingLotWatcherState.loading();

    _subscription = AppConfig.isManager
        ? _watchAllParkingLots().listen((event) => add(ParkingLotWatcherEvent.updateReceived(event)))
        : _watchParkingLot()
            .listen((event) => add(ParkingLotWatcherEvent.updateReceived(event.map((parkingLot) => KtList.of(parkingLot)))));
  }

  Stream<ParkingLotWatcherState> _mapUpdateReceived(Either<ParkingFailure, KtList<ParkingLot>> either) async* {
    yield either.fold(
      (f) => ParkingLotWatcherState.error(f),
      (parkingLots) {
        if (currentParkingLot.value.isNone() && parkingLots.isNotEmpty()) {
          currentParkingLot.setValue(parkingLots.first());
        } else if (parkingLots.isEmpty()) {
          currentParkingLot.resetField();
        } else if (!_isCurrentParkingLotRegistered(parkingLots)) {
          currentParkingLot.setValue(parkingLots.first());
        } else {
          currentParkingLot.updateValue(parkingLots);
        }
        return ParkingLotWatcherState.success(parkingLots);
      },
    );
  }

  bool _isCurrentParkingLotRegistered(KtList<ParkingLot> parkingLots) {
    return parkingLots.any((parkingLot) => parkingLot.id == currentParkingLot.value.getOrElse(() => null).id);
  }

  @override
  Future<void> close() => Future.wait([super.close(), _subscription?.cancel()]);
}
