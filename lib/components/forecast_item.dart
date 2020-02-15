import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ForecastItem extends StatelessWidget {
  final String icon;
  final int hour;
  final double temperature;
  final String active;
  ForecastItem(this.icon, this.hour, this.temperature, this.active);

  @override
  Widget build(BuildContext context) {
    final dateTime =
        DateTime.fromMillisecondsSinceEpoch(hour * 1000, isUtc: true);

    isToday() {
      final difference = dateTime.difference(DateTime.now());
      if (active == 'hourly') {
        return difference.inMinutes < 60 && difference.inMinutes > 0;
      } else {
        return difference.inHours > 0 && difference.inHours < 24;
      }
    }

    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 11.0),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: isToday() ? Colors.white24 : Colors.transparent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: SvgPicture.asset(
              'assets/weather/$icon.svg',
              height: 55,
              width: 55,
            ),
          ),
          Text(
            temperature.toStringAsFixed(1) + 'º',
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 26,
              letterSpacing: 2,
            ),
          ),
          Text(
            active == 'hourly' ? dateTime.hour.toString() + ':00' : '${dateTime.day}/${dateTime.month}',
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontSize: 12,
              letterSpacing: 1,
            ),
          )
        ],
      ),
    );
  }
}
