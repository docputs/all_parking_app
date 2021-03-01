import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../service_locator.dart';
import 'bloc/generate_codes_bloc.dart';

class GenerateCodesScreen extends StatelessWidget {
  final ParkingLot parkingLot;

  const GenerateCodesScreen({Key key, @required this.parkingLot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GenerateCodesBloc>()..add(GenerateCodesEvent.generate(parkingLot)),
      child: AppScaffold(
        title: 'QR Codes',
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return BlocBuilder<GenerateCodesBloc, GenerateCodesState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          loading: () => const Center(child: CircularProgressIndicator()),
          success: (codes) => Text(codes.toString()),
          error: (f) => Center(child: Text(f.message)),
        );
      },
    );
  }
}
