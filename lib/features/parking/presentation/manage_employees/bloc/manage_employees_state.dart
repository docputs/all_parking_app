part of 'manage_employees_bloc.dart';

@freezed
abstract class ManageEmployeesState with _$ManageEmployeesState {
  const factory ManageEmployeesState.initial() = _Initial;
  const factory ManageEmployeesState.loading() = _Loading;
  const factory ManageEmployeesState.success(Manager manager) = _Success;
  const factory ManageEmployeesState.error(ManagerFailure failure) = _Error;
}
