import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_employee_event.dart';
part 'sign_in_employee_state.dart';
part 'sign_in_employee_bloc.freezed.dart';

class SignInEmployeeBloc extends Bloc<SignInEmployeeEvent, SignInEmployeeState> {
  SignInEmployeeBloc() : super(_Initial());

  @override
  Stream<SignInEmployeeState> mapEventToState(SignInEmployeeEvent event) async* {
    // TODO: implement mapEventToState
  }
}
