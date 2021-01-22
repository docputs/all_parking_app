import 'package:injectable/injectable.dart';
import 'package:location/location.dart';

@lazySingleton
class LocationService {
  final _location = Location();
  LocationData _currentLocation;
  LocationData get currentLocation => _currentLocation;

  Future<bool> _isServiceEnabled() async {
    var serviceEnabled = await _location.serviceEnabled();
    if (!serviceEnabled) serviceEnabled = await _location.requestService();
    return serviceEnabled;
  }

  Future<bool> _hasPermission() async {
    var permissionStatus = await _location.hasPermission();
    if (permissionStatus == PermissionStatus.denied) permissionStatus = await _location.requestPermission();
    if (permissionStatus == PermissionStatus.granted)
      return true;
    else
      return false;
  }

  Future<LocationData> getCurrentLocation() async {
    if (await _hasPermission() && await _isServiceEnabled())
      return _currentLocation = await _location.getLocation();
    else
      return _currentLocation;
  }
}
