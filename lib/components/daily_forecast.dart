import 'package:flutter/material.dart';
import 'package:super_simple_weather/components/forecast_item.dart';
import 'package:super_simple_weather/models/weather.dart';
import 'package:google_fonts/google_fonts.dart';

class DailyForecast extends StatelessWidget {
  final List<DailyData> dailyData;
  final String title;
  DailyForecast(this.dailyData, this.title);

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
            itemCount: dailyData.length,
            itemBuilder: (_, index) => ForecastItem(
              dailyData[index].icon,
              dailyData[index].time,
              dailyData[index].temperatureHigh,
              'day'
            ),
          ),
        ),
      ],
    );
  }
}
