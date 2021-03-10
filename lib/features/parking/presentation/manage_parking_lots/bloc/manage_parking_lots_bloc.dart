import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/errors/parking_failure.dart';
import '../../../domain/entities/parking_lot.dart';
import '../../../domain/usecases/delete_parking_lot.dart';

part 'manage_parking_lots_bloc.freezed.dart';
part 'manage_parking_lots_event.dart';
part 'manage_parking_lots_state.dart';

@injectable
class ManageParkingLotsBloc extends Bloc<ManageParkingLotsEvent, ManageParkingLotsState> {
  final DeleteParkingLot _deleteParkingLot;

  ManageParkingLotsBloc(this._deleteParkingLot) : super(_Initial());

  @override
  Stream<ManageParkingLotsState> mapEventToState(ManageParkingLotsEvent event) async* {
    yield* event.map(
      deleted: (e) async* {
        yield const ManageParkingLotsState.loading();
        final failureOrSuccess = await _deleteParkingLot(e.parkingLot);
        yield failureOrSuccess.fold(
          (f) => ManageParkingLotsState.error(f),
          (_) => const ManageParkingLotsState.success(),
        );
      },
    );
  }
}
