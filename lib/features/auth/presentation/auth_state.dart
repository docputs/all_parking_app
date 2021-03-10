part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initializing() = _Initializing;
  const factory AuthState.authenticated(Manager manager) = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
}
