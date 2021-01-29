import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CurrentParkingLot extends ValueNotifier<Option<ParkingLot>> {
  CurrentParkingLot() : super(none());
}
