import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class LocationHelper {
  // Check if location services are enabled
  static Future<bool> isLocationServiceEnabled() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled, ask the user to enable it
      return false;
    }
    return true;
  }

  // Check permission to access location
  static Future<LocationPermission> checkPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    return permission;
  }

  // Request permission to access location
  static Future<LocationPermission> requestPermission() async {
    LocationPermission permission = await Geolocator.requestPermission();
    return permission;
  }

  // Get the current location of the user
  static Future<Position> getCurrentLocation() async {
    bool serviceEnabled = await isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('Location services are disabled');
    }

    LocationPermission permission = await checkPermission();
    if (permission == LocationPermission.denied || permission == LocationPermission.deniedForever) {
      permission = await requestPermission();
      if (permission != LocationPermission.whileInUse && permission != LocationPermission.always) {
        throw Exception('Location permission is denied');
      }
    }

    return await Geolocator.getCurrentPosition(
      locationSettings: LocationSettings(accuracy: LocationAccuracy.high),
    );
  }

  // Convert coordinates (latitude, longitude) to a human-readable address
  static Future<String> getAddressFromCoordinates(double latitude, double longitude) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(latitude, longitude);
      Placemark placemark = placemarks[0];
      return '${placemark.street}, ${placemark.locality}, ${placemark.country}';
    } catch (e) {
      throw Exception('Error getting address: $e');
    }
  }
}
