import 'dart:async';

import 'package:all_parking/features/auth/domain/entities/user.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../domain/repositories/i_user_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IUserRepository _userRepository;

  AuthBloc(this._userRepository) : super(AuthState.initializing());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userOption = await _userRepository.getCurrentUser();
        yield userOption.fold(
          () => const AuthState.unauthenticated(),
          (user) => AuthState.authenticated(user),
        );
      },
      signedOut: (e) async* {
        await _userRepository.signOut();
        yield const AuthState.unauthenticated();
      },
    );
  }
}
