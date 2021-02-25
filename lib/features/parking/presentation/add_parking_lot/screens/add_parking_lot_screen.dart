import 'package:all_parking/features/parking/presentation/bloc/parking_lots/parking_lots_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../../res/messages.dart';
import '../../../../../service_locator.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../../../domain/entities/parking_lot.dart';
import '../bloc/add_parking_lot_bloc.dart';
import 'components/add_parking_lot_form.dart';

class AddParkingLotScreen extends StatelessWidget {
  final ParkingLot editedParkingLot;

  const AddParkingLotScreen({Key key,this.editedParkingLot}) : super(key: key);

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
                context.read<ParkingLotsBloc>().add(const ParkingLotsEvent.fetchRequested());
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
