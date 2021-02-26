import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../res/constants.dart';
import '../../../../../res/messages.dart';
import '../../../../../service_locator.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../../../domain/entities/parked_vehicle.dart';
import '../bloc/check_out_bloc.dart';
import 'components/check_out_body.dart';

class CheckOutScreen extends StatelessWidget {
  final ParkedVehicle vehicle;

  const CheckOutScreen(this.vehicle, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CheckOutBloc>(),
      child: BlocListener<CheckOutBloc, CheckOutState>(
        listenWhen: (p, c) => p.submitFailureOrSuccessOption != c.submitFailureOrSuccessOption,
        listener: (context, state) {
          state.submitFailureOrSuccessOption.fold(
            () => null,
            (failureOrSuccess) => failureOrSuccess.fold(
              (f) => FlushbarHelper.createError(message: f.message).show(context),
              (_) => Navigator.of(context).popUntil((route) => route.isFirst),
            ),
          );
        },
        child: AppScaffold(
          title: Messages.checkOutScreenTitle,
          body: CheckOutBody(vehicle: vehicle),
        ),
      ),
    );
  }
}
