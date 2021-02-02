import 'package:all_parking/features/parking/presentation/check-in/bloc/check_in_bloc.dart';
import 'package:all_parking/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../service_locator.dart';

class CheckInScreen extends StatelessWidget {
  const CheckInScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CheckInBloc>(),
      child: AppScaffold(
        title: 'Entrada de veículo',
        body: Center(
          child: Text('Entrada'),
        ),
      ),
    );
  }
}
