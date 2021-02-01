import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/presentation/add_parking_lot/bloc/add_parking_lot_bloc.dart';
import 'package:all_parking/features/parking/presentation/home/bloc/parking_lot_watcher_bloc.dart';
import 'package:all_parking/res/messages.dart';
import 'package:all_parking/widgets/app_scaffold.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../../service_locator.dart';
import '../../current_parking_lot.dart';
import 'components/add_parking_lot_form.dart';

class AddParkingLotScreen extends StatelessWidget {
  final ParkingLot editedParkingLot;

  AddParkingLotScreen({Key key,this.editedParkingLot}) : super(key: key);

  final currentParkingLot = getIt<CurrentParkingLot>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddParkingLotBloc>()..add(AddParkingLotEvent.started(optionOf(editedParkingLot))),
      child: BlocConsumer<AddParkingLotBloc, AddParkingLotState>(
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
        buildWhen: (p, c) => p.isEditing != c.isEditing,
        builder: (context, state) {
          return AppScaffold(
            title: state.isEditing ? Messages.editParkingLotTitle : Messages.addParkingLotTitle,
            scrollable: true,
            body: const AddParkingLotForm(),
          );
        },
      ),
    );
  }
}
