import 'package:all_parking/features/parking/presentation/add_parking_lot/bloc/add_parking_lot_bloc.dart';
import 'package:all_parking/features/parking/presentation/home/bloc/parking_lot_watcher_bloc.dart';
import 'package:all_parking/widgets/app_scaffold.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../../service_locator.dart';
import '../../current_parking_lot.dart';
import 'components/add_parking_lot_form.dart';

class AddParkingLotScreen extends StatelessWidget {
  final currentParkingLot = getIt<CurrentParkingLot>();

  AddParkingLotScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddParkingLotBloc>(),
      child: BlocListener<AddParkingLotBloc, AddParkingLotState>(
        listenWhen: (p, c) => p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () => null,
            (either) => either.fold(
              (f) => FlushbarHelper.createError(message: f.message).show(context),
              (_) {
                /*OBS: Firebase wont track newly added parking lots because of the way it filters
                parking lots using manager ID's, therefore an update call is needed
                */
                context.read<ParkingLotWatcherBloc>().add(const ParkingLotWatcherEvent.watchStarted());
                return Navigator.of(context).pop(state.parkingLot);
              },
            ),
          );
        },
        child: AppScaffold(
          title: 'Adicionar um estacionamento',
          scrollable: true,
          body: const AddParkingLotForm(),
        ),
      ),
    );
  }
}
