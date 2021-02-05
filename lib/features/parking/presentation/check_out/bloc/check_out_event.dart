part of 'check_out_bloc.dart';

@freezed
abstract class CheckOutEvent with _$CheckOutEvent {
  const factory CheckOutEvent.submitted(ParkedVehicle vehicle) = _Submitted;
}
