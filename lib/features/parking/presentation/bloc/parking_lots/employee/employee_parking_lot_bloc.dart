import 'dart:async';

import '../../../../domain/entities/parking_lot.dart';
import '../../../../domain/usecases/fetch_single_parking_lot.dart';
import '../../../current_parking_lot.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../parking_lots_event.dart';
import '../parking_lots_state.dart';

@injectable
class EmployeeParkingLotBloc extends Bloc<ParkingLotsEvent, ParkingLotsState<ParkingLot>> {
  final FetchSingleParkingLot _fetchSingleParkingLot;
  final CurrentParkingLot _currentParkingLot;

  EmployeeParkingLotBloc(this._fetchSingleParkingLot, this._currentParkingLot) : super(ParkingLotsState.initial());

  @override
  Stream<ParkingLotsState<ParkingLot>> mapEventToState(ParkingLotsEvent event) async* {
    yield* event.when(fetchRequested: _mapFetchRequested);
  }

  Stream<ParkingLotsState<ParkingLot>> _mapFetchRequested() async* {
    yield ParkingLotsState.loading();
    final parkingLotEither = await _fetchSingleParkingLot();
    yield parkingLotEither.fold(
      (f) => ParkingLotsState.error(f),
      (parkingLot) {
        _updateCurrentParkingLot(parkingLot);
        return ParkingLotsState.success(parkingLot);
      },
    );
  }

  void _updateCurrentParkingLot(ParkingLot parkingLot) {
    final currentParkingLot = _currentParkingLot.value.getOrElse(() => null);
    if (_currentParkingLot.value.isNone()) {
      _currentParkingLot.setValue(parkingLot);
    } else if (currentParkingLot == parkingLot) {
      _currentParkingLot.setValue(parkingLot);
    }
  }
}
