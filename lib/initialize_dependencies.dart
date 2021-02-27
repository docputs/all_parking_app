import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'service_locator.dart';

Future<void> initializeDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await configureDependencies();
  Intl.defaultLocale = 'pt_BR';
}
