import 'package:flutter/material.dart';
import 'main.dart';

class Env {

  static Env value;

  String geoBaseUrl;
  String geoToken;
  String darkSkyUrl;
  String darkSkyToken;

  Env() {
    value = this;
    runApp(MyApp(this));
  }

  String get name => runtimeType.toString();
}