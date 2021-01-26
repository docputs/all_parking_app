import 'dart:async';

import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/domain/usecases/fetch_parking_lots.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'parking_lot_selector_event.dart';
part 'parking_lot_selector_state.dart';
part 'parking_lot_selector_bloc.freezed.dart';

@injectable
class ParkingLotSelectorBloc extends Bloc<ParkingLotSelectorEvent, ParkingLotSelectorState> {
  final FetchParkingLots _fetchParkingLots;

  ParkingLotSelectorBloc(this._fetchParkingLots) : super(_Initial());

  @override
  Stream<ParkingLotSelectorState> mapEventToState(ParkingLotSelectorEvent event) async* {
    yield* event.map(
      started: (e) async* {
        yield ParkingLotSelectorState.loading();
        final failureOrParkingLots = await _fetchParkingLots();
        yield failureOrParkingLots.fold(
          (f) => ParkingLotSelectorState.error(f),
          (parkingLots) => ParkingLotSelectorState.success(parkingLots),
        );
      },
    );
  }
}
