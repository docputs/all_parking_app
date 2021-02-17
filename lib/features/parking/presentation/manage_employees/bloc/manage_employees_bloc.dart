import 'dart:async';

import 'package:all_parking/features/parking/core/errors/manager_failure.dart';
import 'package:all_parking/features/parking/domain/entities/manager.dart';
import 'package:all_parking/features/parking/domain/repositories/i_manager_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'manage_employees_bloc.freezed.dart';
part 'manage_employees_event.dart';
part 'manage_employees_state.dart';

@injectable
class ManageEmployeesBloc extends Bloc<ManageEmployeesEvent, ManageEmployeesState> {
  final IManagerRepository _repository;

  ManageEmployeesBloc(this._repository) : super(ManageEmployeesState.initial());

  @override
  Stream<ManageEmployeesState> mapEventToState(ManageEmployeesEvent event) async* {
    yield* event.when(
      started: _mapStarted,
    );
  }

  Stream<ManageEmployeesState> _mapStarted() async* {
    final managerEither = await _repository.read();
    yield managerEither.fold(
      (f) => ManageEmployeesState.error(f),
      (manager) => ManageEmployeesState.success(manager),
    );
  }
}
