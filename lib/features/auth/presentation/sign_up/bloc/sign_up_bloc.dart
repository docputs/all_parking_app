import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/errors/auth_failure.dart';
import '../../../core/util/validators.dart';
import '../../../domain/usecases/sign_up.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUp _signUp;
  Validators _validators;

  SignUpBloc(this._signUp, this._validators) : super(SignUpState.initial());

  @override
  Stream<SignUpState> mapEventToState(
    SignUpEvent event,
  ) async* {
    yield* event.map(
      displayNameChanged: (e) async* {
        yield state.copyWith(
          displayName: e.displayName,
          signUpSuccessOrFailureOption: none(),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          email: e.email,
          signUpSuccessOrFailureOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: e.password,
          signUpSuccessOrFailureOption: none(),
        );
      },
      signUpPressed: (e) async* {
        Either<AuthFailure, Unit> signUpSuccessOrFailure;

        yield state.copyWith(
          isSubmitting: true,
          signUpSuccessOrFailureOption: none(),
        );

        if (_validators.isValidDisplayName(state.displayName) && _validators.isValidEmail(state.email)) {
          signUpSuccessOrFailure = await _signUp(displayName: state.displayName, email: state.email, password: state.password);
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          signUpSuccessOrFailureOption: optionOf(signUpSuccessOrFailure),
        );
      },
    );
  }
}
