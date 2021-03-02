part of 'generate_codes_bloc.dart';

@freezed
abstract class GenerateCodesEvent with _$GenerateCodesEvent {
  const factory GenerateCodesEvent.generate(ParkingLot parkingLot) = _Generate;
}
