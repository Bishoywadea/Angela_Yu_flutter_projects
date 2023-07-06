import 'package:geolocator/geolocator.dart';

class Location {
  double latitude = 0.0;
  double longitude = 0.0;

  Future getCurrentLocation() async {
    await Geolocator.checkPermission();
    await Geolocator.requestPermission();
    DateTime t = DateTime.now();
    Position position = Position(
        longitude: 0,
        latitude: 0,
        timestamp: t,
        accuracy: 0,
        altitude: 0.0,
        heading: 0.0,
        speed: 0.0,
        speedAccuracy: 0.0);
    try {
      position = await Geolocator.getCurrentPosition();
    } catch (e) {
      print(e);
    }
    this.longitude = position.longitude;
    this.latitude = position.latitude;
  }
}
