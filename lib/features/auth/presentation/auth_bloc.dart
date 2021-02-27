import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../parking/domain/entities/manager.dart';
import '../domain/repositories/i_manager_auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IManagerAuthRepository _authRepository;

  AuthBloc(this._authRepository) : super(AuthState.initializing());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final managerOption = await _authRepository.getCurrentManager();
        yield managerOption.fold(
          () => const AuthState.unauthenticated(),
          (manager) => AuthState.authenticated(manager),
        );
      },
      signedOut: (e) async* {
        await _authRepository.signOut();
        yield const AuthState.unauthenticated();
      },
    );
  }
}
