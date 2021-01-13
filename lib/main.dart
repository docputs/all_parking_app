import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'android_app.dart';
import 'service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureDependencies();
  runApp(AndroidApp());
}
