import 'package:all_parking/android_app.dart';
import 'package:all_parking/app_config.dart';
import 'package:all_parking/initialize_dependencies.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await initializeDependencies();
  AppConfig(flavor: Flavor.EMPLOYEE);
  runApp(AndroidApp());
}
