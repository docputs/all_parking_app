import 'dart:async';

import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/qr_code/core/errors/qr_failure.dart';
import 'package:all_parking/features/qr_code/domain/entities/qr_code.dart';
import 'package:all_parking/features/qr_code/domain/usecases/generate_qr_codes.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'generate_codes_event.dart';
part 'generate_codes_state.dart';
part 'generate_codes_bloc.freezed.dart';

@injectable
class GenerateCodesBloc extends Bloc<GenerateCodesEvent, GenerateCodesState> {
  final GenerateQRCodes _generateQRCodes;

  GenerateCodesBloc(this._generateQRCodes) : super(_Initial());

  @override
  Stream<GenerateCodesState> mapEventToState(GenerateCodesEvent event) async* {
    yield* event.when(
      generate: (parkingLot) async* {
        yield GenerateCodesState.loading();
        final codesOrFailure = await _generateQRCodes(parkingLot);
        yield codesOrFailure.fold(
          (f) => GenerateCodesState.error(f),
          (codes) => GenerateCodesState.success(codes),
        );
      },
    );
  }
}
