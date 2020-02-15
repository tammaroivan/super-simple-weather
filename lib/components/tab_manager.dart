import 'package:flutter/material.dart';
import 'package:super_simple_weather/components/daily_forecast.dart';
import 'package:super_simple_weather/components/hourly_forecast.dart';
import 'package:super_simple_weather/components/tab_time.dart';
import 'package:super_simple_weather/models/weather.dart';

class TabManager extends StatefulWidget {
  final Hourly hourlyData;
  final Daily dailyData;

  TabManager(this.hourlyData, this.dailyData);

  @override
  _TabManagerState createState() => _TabManagerState();
}

class _TabManagerState extends State<TabManager> {
  bool activeHourly = true;

  toggleActive(active) {
    setState(() {
      activeHourly = active == 'hourly';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: <Widget>[
          activeHourly
              ? HourlyForecast(
                  widget.hourlyData.data,
                  widget.hourlyData.summary,
                )
              : DailyForecast(
                  widget.dailyData.data,
                  widget.dailyData.summary,
                ),
          TabTime(notifyParent: toggleActive, activeHourly: activeHourly)
        ],
      ),
    );
  }
}
