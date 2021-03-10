import 'package:freezed_annotation/freezed_annotation.dart';

part 'associated_parking_lot.freezed.dart';

@freezed
abstract class AssociatedParkingLot implements _$AssociatedParkingLot {
  const AssociatedParkingLot._();

  factory AssociatedParkingLot({
    @required String id,
    @required String title,
  }) = _AssociatedParkingLot;

  factory AssociatedParkingLot.empty() => AssociatedParkingLot(id: '', title: '');

  bool get isValid => id.isNotEmpty && title.isNotEmpty;
}
