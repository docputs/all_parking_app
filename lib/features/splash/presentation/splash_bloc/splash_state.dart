part of 'splash_bloc.dart';

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState.initial() = _Initial;
  const factory SplashState.employee() = _Employee;
  const factory SplashState.manager() = _Manager;
}
