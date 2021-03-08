import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ErrorReportService {
  Future<void> log(dynamic exception, StackTrace stack) => FirebaseCrashlytics.instance.recordError(exception, stack);

  Future<void> setUserIdentifier(String identifier) => FirebaseCrashlytics.instance.setUserIdentifier(identifier);
}
