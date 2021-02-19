import 'dart:async';

import 'package:all_parking/app_config.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(_Initial());

  @override
  Stream<SplashState> mapEventToState(SplashEvent event) async* {
    yield* event.when(
      started: () async* {
        yield AppConfig.isManager ? const SplashState.manager() : const SplashState.employee();
      },
    );
  }
}
