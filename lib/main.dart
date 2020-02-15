import 'package:flutter/material.dart';
import 'package:super_simple_weather/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:super_simple_weather/config/development.dart';
import 'package:super_simple_weather/env.dart';

void main() => Development();

class MyApp extends StatelessWidget {
  final Env env;
  MyApp(this.env);
  final Color primaryColor = Color(0xff5757D2);
  final Color accentColor = Color(0xffffffff);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: primaryColor,
        accentColor: accentColor,
        textTheme: GoogleFonts.openSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: Scaffold(
//        appBar: AppBar(
//          backgroundColor: Colors.white,
//          elevation: 0,
//        ),
        body: Home()
      ),
    );
  }
}
