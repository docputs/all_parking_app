import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/presentation/check_out/bloc/check_out_bloc.dart';
import 'package:all_parking/res/constants.dart';
import 'package:all_parking/widgets/app_scaffold.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../service_locator.dart';
import 'components/check_out_body.dart';

class CheckOutScreen extends StatelessWidget {
  final ParkedVehicle vehicle;

  const CheckOutScreen(this.vehicle, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CheckOutBloc>(),
      child: BlocListener<CheckOutBloc, CheckOutState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            error: (f) => FlushbarHelper.createError(message: f.message).show(context),
            success: () => Navigator.of(context).pushReplacementNamed(Constants.homeRoute),
          );
        },
        child: AppScaffold(
          title: 'Saída de veículo',
          body: CheckOutBody(vehicle: vehicle),
        ),
      ),
    );
  }
}
