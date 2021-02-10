part of 'reports_bloc.dart';

@freezed
abstract class ReportsState with _$ReportsState {
  const factory ReportsState.initial({@required DateTime selectedDate}) = _Initial;

  const factory ReportsState({
    @required DateTime selectedDate,
    @required ReportsViewModel viewModel,
  }) = _ReportsState;
}
