import 'dart:async';

import 'package:all_parking/features/parking/core/errors/manager_failure.dart';
import 'package:all_parking/features/parking/domain/entities/employee.dart';
import 'package:all_parking/features/parking/domain/entities/manager.dart';
import 'package:all_parking/features/parking/domain/repositories/i_manager_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'manage_employees_bloc.freezed.dart';
part 'manage_employees_event.dart';
part 'manage_employees_state.dart';

@injectable
class ManageEmployeesBloc extends Bloc<ManageEmployeesEvent, ManageEmployeesState> {
  final IManagerRepository _repository;

  ManageEmployeesBloc(this._repository) : super(ManageEmployeesState.initial());

  @override
  Stream<ManageEmployeesState> mapEventToState(ManageEmployeesEvent event) async* {
    yield* event.when(fetchRequested: _mapFetchRequested, deleted: _mapDeleted);
  }

  Stream<ManageEmployeesState> _mapFetchRequested() async* {
    yield ManageEmployeesState.loading();
    final managerEither = await _repository.read();
    yield managerEither.fold(
      (f) => ManageEmployeesState.error(f),
      (manager) => ManageEmployeesState.success(manager),
    );
  }

  Stream<ManageEmployeesState> _mapDeleted(Employee employee) async* {
    yield ManageEmployeesState.loading();
    final manager = state.maybeWhen(orElse: () => null, success: (manager) => manager);
    final newManager = manager.copyWith(employees: manager.employees.minusElement(employee));
    final managerEither = await _repository.update(newManager);
    yield managerEither.fold(
      (f) => ManageEmployeesState.error(f),
      (_) {
        add(const ManageEmployeesEvent.fetchRequested());
        return state;
      },
    );
  }
}
