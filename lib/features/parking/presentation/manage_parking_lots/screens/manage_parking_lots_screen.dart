import 'package:all_parking/features/parking/presentation/core/parking_lots/parking_lots_bloc.dart';
import 'package:all_parking/widgets/parking_lot_list_builder.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../res/constants.dart';
import '../../../../../res/messages.dart';
import '../../../../../service_locator.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../../../../../widgets/default_drawer.dart';
import '../bloc/manage_parking_lots_bloc.dart';

class ManageParkingLotsScreen extends StatelessWidget {
  const ManageParkingLotsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ManageParkingLotsBloc>(),
      child: BlocListener<ManageParkingLotsBloc, ManageParkingLotsState>(
        listener: (context, state) {
          return state.maybeWhen(
            orElse: () => null,
            success: () {
              context.read<ParkingLotsBloc>().add(const ParkingLotsEvent.fetchRequested());
              return FlushbarHelper.createInformation(message: 'Estacionamento removido com sucesso!').show(context);
            },
            error: (f) => FlushbarHelper.createError(message: f.message).show(context),
          );
        },
        child: AppScaffold(
          scrollable: false,
          drawer: const DefaultDrawer(),
          customAppBar: _buildCustomAppBar(context),
          body: const ParkingLotListBuilder(headerText: Messages.manageParkingLotsYourParkingLotsLabel, allowActions: true),
        ),
      ),
    );
  }

  AppBar _buildCustomAppBar(BuildContext context) {
    return AppBar(
      title: Text(Messages.manageParkingLotsScreenTitle),
      actions: [
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () => Navigator.of(context).pushNamed(Constants.addParkingLotRoute),
        )
      ],
    );
  }
}
