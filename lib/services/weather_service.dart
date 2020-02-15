import 'dart:developer';

import 'package:super_simple_weather/env.dart';
import 'package:http/http.dart';
import 'package:super_simple_weather/models/weather.dart';
import 'dart:convert' show jsonDecode;

class WeatherService {  
  final String darkSkyUrl = Env.value.darkSkyUrl;
  final String darkSkyToken = Env.value.darkSkyToken;

  Future<Weather> getWeatherFromLocation(lat, lon) async {
    log(darkSkyUrl + '/forecast/$darkSkyToken/$lat,$lon');
    Response response = await get(darkSkyUrl + '/forecast/$darkSkyToken/$lat,$lon?units=si');
    if (response.statusCode == 200) {
      final weather = jsonDecode(response.body);
      return Weather.fromJson(weather);
    } else {
      throw Exception('Failed to load the city weather.');
    }
  }
}