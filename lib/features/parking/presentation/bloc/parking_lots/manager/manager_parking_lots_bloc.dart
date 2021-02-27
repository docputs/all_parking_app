import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../../../domain/entities/parking_lot.dart';
import '../../../../domain/usecases/fetch_parking_lots.dart';
import '../../../current_parking_lot.dart';
import '../parking_lots_event.dart';
import '../parking_lots_state.dart';

@injectable
class ManagerParkingLotsBloc extends Bloc<ParkingLotsEvent, ParkingLotsState<KtList<ParkingLot>>> {
  final FetchParkingLots _fetchParkingLots;
  final CurrentParkingLot _currentParkingLot;

  ManagerParkingLotsBloc(this._fetchParkingLots, this._currentParkingLot) : super(ParkingLotsState.initial());

  @override
  Stream<ParkingLotsState<KtList<ParkingLot>>> mapEventToState(ParkingLotsEvent event) async* {
    yield* event.when(fetchRequested: _mapFetchRequested);
  }

  Stream<ParkingLotsState<KtList<ParkingLot>>> _mapFetchRequested() async* {
    yield ParkingLotsState.loading();
    final parkingLotEither = await _fetchParkingLots();
    yield parkingLotEither.fold(
      (f) => ParkingLotsState.error(f),
      (parkingLots) {
        _updateCurrentParkingLot(parkingLots);
        return ParkingLotsState.success(parkingLots);
      },
    );
  }

  void _updateCurrentParkingLot(KtList<ParkingLot> parkingLots) {
    final parkingLot = _currentParkingLot.value.getOrElse(() => null);
    if (_currentParkingLot.value.isNone()) {
      _currentParkingLot.setValue(parkingLots.first());
    } else if (!parkingLots.contains(parkingLot)) {
      _currentParkingLot.setValue(parkingLots.first());
    }
  }
}
