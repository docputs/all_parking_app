part of 'find_check_out_bloc.dart';

@freezed
abstract class FindCheckOutEvent with _$FindCheckOutEvent {
  const factory FindCheckOutEvent.started({
    @required BuildContext context,
    @required QRCode code,
  }) = _Started;
}
