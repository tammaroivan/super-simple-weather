import 'package:super_simple_weather/env.dart';

void main() => Development();

class Development extends Env {
  final String geoBaseUrl = 'https://us1.locationiq.com/v1';
  final String geoToken = '88d42d0055bce0';
  final String darkSkyUrl = 'https://api.darksky.net';
  final String darkSkyToken = 'ed6a48bbda2319bfbcb44fe08ca03db5';
}