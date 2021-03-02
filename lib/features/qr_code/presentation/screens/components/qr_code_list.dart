import 'package:all_parking/features/qr_code/domain/entities/qr_code.dart';
import 'package:all_parking/features/qr_code/presentation/bloc/save_codes/save_codes_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:screenshot/screenshot.dart';

class QRCodeList extends StatefulWidget {
  final KtList<QRCode> codes;

  QRCodeList(this.codes, {Key key}) : super(key: key);

  @override
  _QRCodeListState createState() => _QRCodeListState();
}

class _QRCodeListState extends State<QRCodeList> {
  @override
  void initState() {
    super.initState();
    context.read<SaveCodesBloc>().add(const SaveCodesEvent.saveRequested());
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.select((SaveCodesBloc element) => element.controller);

    return SingleChildScrollView(
      child: Screenshot(
        controller: controller,
        child: GridView.extent(
          shrinkWrap: true,
          maxCrossAxisExtent: 80,
          physics: const NeverScrollableScrollPhysics(),
          children: widget.codes.map((code) => QrImage(data: code.value)).asList(),
        ),
      ),
    );
  }
}
