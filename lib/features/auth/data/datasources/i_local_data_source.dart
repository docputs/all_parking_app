import 'package:dartz/dartz.dart';

abstract class ILocalDataSource {
  Future<Option<String>> getToken();
  Future<void> persistToken(String token);
  Future<void> deleteToken();
}
