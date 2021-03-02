import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/qr_code/presentation/bloc/generate_codes/generate_codes_bloc.dart';
import 'package:all_parking/features/qr_code/presentation/bloc/save_codes/save_codes_bloc.dart';
import 'package:all_parking/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share/share.dart';

import '../../../../service_locator.dart';
import 'components/qr_code_list.dart';

class GenerateCodesScreen extends StatelessWidget {
  final ParkingLot parkingLot;

  const GenerateCodesScreen({Key key, @required this.parkingLot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<GenerateCodesBloc>()..add(GenerateCodesEvent.generate(parkingLot))),
        BlocProvider(create: (context) => getIt<SaveCodesBloc>()),
      ],
      child: AppScaffold(
        title: 'QR Codes',
        scrollable: false,
        actions: [_buildShareAction()],
        body: _buildBody(),
      ),
    );
  }

  Widget _buildShareAction() {
    return BlocBuilder<SaveCodesBloc, SaveCodesState>(
      builder: (context, state) {
        return IconButton(
          icon: Icon(Icons.share),
          onPressed: state.maybeWhen(
            orElse: () => null,
            success: (file) => () => Share.shareFiles([file.path]),
          ),
        );
      },
    );
  }

  Widget _buildBody() {
    return BlocBuilder<GenerateCodesBloc, GenerateCodesState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          loading: () => const Center(child: CircularProgressIndicator()),
          success: (codes) => QRCodeList(codes),
          error: (f) => Center(child: Text(f.message)),
        );
      },
    );
  }
}
