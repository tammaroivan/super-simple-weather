import 'package:location/location.dart';
import 'package:super_simple_weather/models/location_detail.dart';
import 'package:super_simple_weather/models/user_location.dart';
import 'package:http/http.dart';
import 'package:super_simple_weather/env.dart';
import 'package:super_simple_weather/models/weather.dart';
import 'dart:convert' show jsonDecode;
import 'weather_service.dart';

class LocationService {
  final String geoBaseUrl = Env.value.geoBaseUrl;
  final String geoToken = Env.value.geoToken;
  LocationData _currentLocation;
  final WeatherService weatherService = WeatherService();


  var location = new Location();

  Future<LocationData> getLocation() async {
    try {
      Future userLocation = location.getLocation();
      _currentLocation = await userLocation;
    } catch (e) {
      print('Could not get the location.');
    }
    return _currentLocation;
  }

  Future<LocationDetail> getLocationDetail(lat, lng) async {
    Response response = await get(geoBaseUrl + '/reverse.php?key=$geoToken&lat=${lat.toString()}&lon=${lng.toString()}&format=json');
    if (response.statusCode == 200) {
      final locationDetail = jsonDecode(response.body);
      final address = Address.fromJson(locationDetail['address']);
      return LocationDetail(address: address, lat: double.parse(locationDetail['lat']), lon: double.parse(locationDetail['lon']));
    } else {
      throw Exception('Failed to load the city information.');
    }
  }

  Future<UserLocation> getUserLocation() async {
    LocationData location = await getLocation();
    LocationDetail locationDetail = await getLocationDetail(location.latitude, location.longitude);
    Weather weather = await weatherService.getWeatherFromLocation(locationDetail.lat, locationDetail.lon);
    return UserLocation(latitude: location.latitude, longitude: location.longitude, address: locationDetail.address, weather: weather);
  }
}
