import 'package:all_parking/features/auth/data/datasources/i_local_data_source.dart';
import 'package:all_parking/res/constants.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: ILocalDataSource)
class LocalDataSource implements ILocalDataSource {
  final SharedPreferences _sharedPreferences;

  const LocalDataSource(this._sharedPreferences);

  @override
  Future<Option<String>> getToken() async {
    final employeeToken = _sharedPreferences.getString(Constants.employeeKey);
    return optionOf(employeeToken);
  }

  @override
  Future<void> persistToken(String token) {
    return _sharedPreferences.setString(Constants.employeeKey, token);
  }

  @override
  Future<void> deleteToken() {
    return _sharedPreferences.remove(Constants.employeeKey);
  }
}
