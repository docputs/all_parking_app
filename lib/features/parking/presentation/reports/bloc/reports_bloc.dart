import 'dart:async';

import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/domain/entities/parked_vehicles_list.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/entities/parking_lot.dart';
import '../view_models/reports_view_model.dart';

part 'reports_bloc.freezed.dart';
part 'reports_event.dart';
part 'reports_state.dart';

@injectable
class ReportsBloc extends Bloc<ReportsEvent, ReportsState> {
  ReportsBloc() : super(_Initial(selectedDate: DateTime.now()));

  @override
  Stream<ReportsState> mapEventToState(ReportsEvent event) async* {
    yield* event.when(
      initialized: (parkingLot, vehicles) async* {
        yield _ReportsState(
          selectedDate: DateTime.now(),
          viewModel: ReportsViewModel(parkingLot: parkingLot, vehicles: vehicles),
        );
      },
      dateSelected: (dateTime) async* {
        final newState = state.maybeMap((value) => value, orElse: () {});
        yield newState.copyWith(selectedDate: dateTime);
      },
    );
  }
}
