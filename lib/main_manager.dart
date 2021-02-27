import 'package:flutter/material.dart';

import 'android_app.dart';
import 'app_config.dart';
import 'initialize_dependencies.dart';

Future<void> main() async {
  await initializeDependencies();
  AppConfig(flavor: Flavor.MANAGER);
  runApp(AndroidApp());
}
