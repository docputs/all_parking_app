import 'dart:async';

import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/domain/usecases/fetch_parking_lots.dart';
import 'package:all_parking/features/parking/presentation/current_parking_lot.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'parking_lots_bloc.freezed.dart';
part 'parking_lots_event.dart';
part 'parking_lots_state.dart';

@injectable
class ParkingLotsBloc extends Bloc<ParkingLotsEvent, ParkingLotsState> {
  final FetchParkingLots _fetchParkingLots;
  final CurrentParkingLot _currentParkingLot;

  ParkingLotsBloc(this._fetchParkingLots, this._currentParkingLot) : super(ParkingLotsState.initial());

  @override
  Stream<ParkingLotsState> mapEventToState(ParkingLotsEvent event) async* {
    yield* event.when(fetchRequested: _mapFetchRequested);
  }

  Stream<ParkingLotsState> _mapFetchRequested() async* {
    yield ParkingLotsState.loading();
    final parkingLotsEither = await _fetchParkingLots();
    yield parkingLotsEither.fold(
      (f) => ParkingLotsState.error(f),
      (parkingLots) {
        if (_currentParkingLot.value.isNone()) {
          _currentParkingLot.setValue(parkingLots.first());
        }
        return ParkingLotsState.success(parkingLots);
      },
    );
  }
}
