import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ErrorReportService {
  Future<void> log(String message) => FirebaseCrashlytics.instance.log(message);

  Future<void> setUserIdentifier(String identifier) => FirebaseCrashlytics.instance.setUserIdentifier(identifier);
}
