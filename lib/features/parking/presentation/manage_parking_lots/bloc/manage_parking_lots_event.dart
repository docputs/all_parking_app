part of 'manage_parking_lots_bloc.dart';

@freezed
abstract class ManageParkingLotsEvent with _$ManageParkingLotsEvent {
  const factory ManageParkingLotsEvent.deleted(ParkingLot parkingLot) = _Deleted;
}