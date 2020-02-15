import 'package:flutter/material.dart';
import 'package:super_simple_weather/components/forecast_item.dart';
import 'package:super_simple_weather/models/weather.dart';
import 'package:google_fonts/google_fonts.dart';

class HourlyForecast extends StatelessWidget {
  final List<HourlyData> hourlyData;
  final String title;
  HourlyForecast(this.hourlyData, this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: GoogleFonts.openSans(color: Colors.white),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.23,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hourlyData.length,
            itemBuilder: (_, index) => ForecastItem(
                hourlyData[index].icon,
                hourlyData[index].time,
                hourlyData[index].temperature,
                'hourly'),
          ),
        ),
      ],
    );
  }
}
