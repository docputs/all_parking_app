part of 'check_in_bloc.dart';

@freezed
abstract class CheckInEvent with _$CheckInEvent {
  const factory CheckInEvent.changedLicensePlate(String input) = _ChangedLicensePlate;
  const factory CheckInEvent.changedLabel(String input) = _ChangedLabel;
  const factory CheckInEvent.changedColor(VehicleColor input) = _ChangedColor;
  const factory CheckInEvent.changedVehicleType(VehicleType input) = _ChangedVehicleType;
  const factory CheckInEvent.changedObservations(String input) = _ChangedObservations;
  const factory CheckInEvent.changedOwnerName(String input) = _ChangedOwnerName;
  const factory CheckInEvent.changedOwnerPhone(String input) = _ChangedOwnerPhone;
  const factory CheckInEvent.changedOwnerCpf(String input) = _ChangedOwnerCpf;
  const factory CheckInEvent.submitted(Future<bool> Function(BuildContext) confirmSubmit, BuildContext context) = _Submitted;
}
