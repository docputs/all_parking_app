import 'package:flutter/widgets.dart';

enum Flavor { MANAGER, EMPLOYEE }

class AppConfig {
  final Flavor flavor;

  static AppConfig _instance;
  static AppConfig get instance => _instance;

  const AppConfig._(this.flavor);

  factory AppConfig({@required Flavor flavor}) => _instance ??= AppConfig._(flavor);

  static String get title {
    switch (_instance.flavor) {
      case Flavor.MANAGER:
        return 'All Parking (Admin)';
        break;
      case Flavor.EMPLOYEE:
      default:
        return 'All Parking';
    }
  }

  static bool get isManager => _instance.flavor == Flavor.MANAGER;
}
