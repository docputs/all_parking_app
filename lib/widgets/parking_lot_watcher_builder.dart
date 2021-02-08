import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/presentation/home/bloc/parking_lot_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

class ParkingLotWatcherBuilder extends StatelessWidget {
  final Widget Function(KtList<ParkingLot>) onSuccess;
  final Widget Function(ParkingFailure) onError;

  const ParkingLotWatcherBuilder({
    Key key,
    @required this.onSuccess,
    @required this.onError,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ParkingLotWatcherBloc, ParkingLotWatcherState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          loading: () => const Center(child: CircularProgressIndicator()),
          success: onSuccess,
          error: onError,
        );
      },
    );
  }
}
