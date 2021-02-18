import 'dart:async';

import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/domain/entities/employee.dart';
import 'package:all_parking/features/parking/domain/entities/manager.dart';
import 'package:all_parking/features/parking/domain/usecases/delete_employee.dart';
import 'package:all_parking/features/parking/domain/usecases/fetch_current_manager.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'manage_employees_bloc.freezed.dart';
part 'manage_employees_event.dart';
part 'manage_employees_state.dart';

@injectable
class ManageEmployeesBloc extends Bloc<ManageEmployeesEvent, ManageEmployeesState> {
  final DeleteEmployee _deleteEmployee;
  final FetchCurrentManager _fetchCurrentManager;

  ManageEmployeesBloc(this._deleteEmployee, this._fetchCurrentManager) : super(ManageEmployeesState.initial());

  @override
  Stream<ManageEmployeesState> mapEventToState(ManageEmployeesEvent event) async* {
    yield* event.when(fetchRequested: _mapFetchRequested, deleted: _mapDeleted);
  }

  Stream<ManageEmployeesState> _mapFetchRequested() async* {
    yield ManageEmployeesState.loading();
    final managerEither = await _fetchCurrentManager();
    yield managerEither.fold(
      (f) => ManageEmployeesState.error(f),
      (manager) => ManageEmployeesState.success(manager),
    );
  }

  Stream<ManageEmployeesState> _mapDeleted(Employee employee) async* {
    yield ManageEmployeesState.loading();
    final failureOrSuccess = await _deleteEmployee(employee);
    yield failureOrSuccess.fold(
      (f) => ManageEmployeesState.error(f),
      (_) {
        add(const ManageEmployeesEvent.fetchRequested());
        return state;
      },
    );
  }
}
