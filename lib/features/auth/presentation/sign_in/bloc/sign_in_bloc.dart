import 'dart:async';

import 'package:all_parking/utils/validators.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/errors/auth_failure.dart';
import '../../../domain/usecases/sign_in.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignIn signIn;

  SignInBloc(this.signIn) : super(SignInState.initial());

  @override
  Stream<SignInState> mapEventToState(SignInEvent event) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          email: e.email,
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: e.password,
          authFailureOrSuccessOption: none(),
        );
      },
      signInPressed: (e) async* {
        Either<AuthFailure, Unit> authFailureOrSuccess;

        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );

        if (Validators.isValidEmail(state.email)) {
          authFailureOrSuccess = await signIn(email: state.email, password: state.password);
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(authFailureOrSuccess),
        );
      },
    );
  }
}
