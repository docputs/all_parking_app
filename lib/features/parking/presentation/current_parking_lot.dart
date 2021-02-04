import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@lazySingleton
class CurrentParkingLot extends ValueNotifier<Option<ParkingLot>> {
  CurrentParkingLot() : super(none());

  void setValue(ParkingLot value) => this.value = optionOf(value);

  void resetField() => this.value = none();

  void updateValue(KtList<ParkingLot> parkingLots) {
    return setValue(parkingLots.find((parkingLot) => parkingLot.id == this.value.getOrElse(() => throw const ParkingLotException()).id));
  }
}

class ParkingLotException implements Exception {
  const ParkingLotException();
}
