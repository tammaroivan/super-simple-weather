import 'package:super_simple_weather/models/location_detail.dart';
import 'package:super_simple_weather/models/weather.dart';

class UserLocation {
  final double latitude;
  final double longitude;
  final Address address;
  final Weather weather;

  UserLocation({this.latitude, this.longitude, this.address, this.weather});
}
