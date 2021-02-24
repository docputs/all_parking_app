import 'package:all_parking/features/parking/presentation/home/screens/components/watcher_failure_widget.dart';
import 'package:all_parking/features/parking/presentation/reports/view_models/reports_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/parking/core/errors/parking_failure.dart';
import '../features/parking/presentation/home/bloc/vehicles_watcher_bloc.dart';

class VehiclesWatcherBuilder extends StatefulWidget {
  final Widget Function(ParkedVehiclesList vehicles) onSuccess;
  final Widget Function(ParkingFailure f) onError;
  final bool useScaffold;

  const VehiclesWatcherBuilder({
    Key key,
    @required this.onSuccess,
    this.onError,
    this.useScaffold = false,
  }) : super(key: key);

  @override
  _VehiclesWatcherBuilderState createState() => _VehiclesWatcherBuilderState();
}

class _VehiclesWatcherBuilderState extends State<VehiclesWatcherBuilder> {
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
    return BlocBuilder<VehiclesWatcherBloc, VehiclesWatcherState>(
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
