import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

enum NavigatorAction { push, pop, replace }

@lazySingleton
class AppNavigator {
  final _navigatorKey = GlobalKey<NavigatorState>();
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  NavigatorState get _navigator => _navigatorKey.currentState;

  Future<void> navigate(NavigatorAction action, [String routeName]) async {
    switch (action) {
      case NavigatorAction.push:
        return _navigator.pushNamed(routeName);
        break;
      case NavigatorAction.pop:
        return _navigator.pop();
        break;
      case NavigatorAction.replace:
        return _navigator.pushReplacementNamed(routeName);
        break;
      default:
        break;
    }
  }
}
