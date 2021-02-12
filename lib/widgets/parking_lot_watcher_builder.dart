import 'package:all_parking/features/parking/presentation/home/screens/components/watcher_failure_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

import '../features/parking/core/errors/parking_failure.dart';
import '../features/parking/domain/entities/parking_lot.dart';
import '../features/parking/presentation/home/bloc/parking_lot_watcher_bloc.dart';

class ParkingLotWatcherBuilder extends StatefulWidget {
  final Widget Function(KtList<ParkingLot>) onSuccess;
  final Widget Function(ParkingFailure) onError;
  final bool useScaffold;

  ParkingLotWatcherBuilder({
    Key key,
    @required this.onSuccess,
    this.onError,
    this.useScaffold = false,
  }) : super(key: key);

  @override
  _ParkingLotWatcherBuilderState createState() => _ParkingLotWatcherBuilderState();
}

class _ParkingLotWatcherBuilderState extends State<ParkingLotWatcherBuilder> {
  Widget initialWidget;
  Widget loadingWidget;

  @override
  void initState() {
    super.initState();
    if (widget.useScaffold) {
      initialWidget = const Scaffold();
      loadingWidget = const Scaffold(body: Center(child: CircularProgressIndicator()));
    } else {
      initialWidget = const SizedBox();
      loadingWidget = const Center(child: CircularProgressIndicator());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ParkingLotWatcherBloc, ParkingLotWatcherState>(
      builder: (context, state) {
        return state.when(
          initial: () => initialWidget,
          loading: () => loadingWidget,
          success: widget.onSuccess,
          error: (f) {
            if (widget.onError == null) return WatcherFailureWidget(f);
            return widget.onError(f);
          },
        );
      },
    );
  }
}
