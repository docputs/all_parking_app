import 'dart:async';

import 'package:all_parking/features/parking/domain/usecases/watch_parking_lot.dart';

import '../../../core/errors/parking_failure.dart';
import '../../../domain/entities/parking_lot.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final WatchParkingLot _watchParkingLots;

  HomeBloc(this._watchParkingLots) : super(_Initial());

  StreamSubscription<Either<ParkingFailure, ParkingLot>> _subscription;

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    yield* event.map(
      watchStarted: (e) async* {
        yield HomeState.loading();
        _subscription = _watchParkingLots(e.parkingLot).listen((event) => add(HomeEvent.updateReceived(event)));
      },
      updateReceived: (e) async* {
        yield e.either.fold(
          (f) => HomeState.error(f),
          (parkingLot) => HomeState.success(parkingLot),
        );
      },
    );
  }

  @override
  Future<void> close() => Future.wait([super.close(), _subscription?.cancel()]);
}
