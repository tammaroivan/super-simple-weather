import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:super_simple_weather/components/tab_manager.dart';
import 'package:super_simple_weather/services/location_service.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final LocationService locationService = LocationService();
  Future locationFuture;
  final now = DateTime.now();

  @override
  void initState() {
    super.initState();

    locationFuture = _getUserLocation();
  }

  _getUserLocation() async {
    return await locationService.getUserLocation();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: locationFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      snapshot.data.address.city.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        letterSpacing: 1,
                        color: Theme.of(context).primaryColor,
                        fontSize: 36.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      child: Container(
                        color: Theme.of(context).primaryColor.withOpacity(0.1),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            snapshot.data.address.country.toUpperCase() +
                                '  ${now.day}/${now.month}',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.openSans(
                              letterSpacing: 1,
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.5),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    SvgPicture.asset(
                      'assets/weather/${snapshot.data.weather.currently.icon}.svg',
                      width: MediaQuery.of(context).size.width * 0.40,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      '${snapshot.data.weather.currently.temperature.toStringAsFixed(1)}º',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        letterSpacing: 1,
                        color: Theme.of(context).primaryColor,
                        fontSize: 72.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      snapshot.data.weather.currently.summary,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        letterSpacing: 1,
                        color: Theme.of(context).primaryColor.withOpacity(0.5),
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: TabManager(
                    snapshot.data.weather.hourly,
                    snapshot.data.weather.daily,
                  ),
                ),
              ),
            ],
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }
}
