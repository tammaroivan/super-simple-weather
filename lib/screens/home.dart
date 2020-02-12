import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Text(
              'BARCELONA',
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                letterSpacing: 1,
                color: Theme.of(context).primaryColor,
                fontSize: 36.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              'Clear',
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                letterSpacing: 1,
                color: Theme.of(context).primaryColor.withOpacity(0.5),
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            SvgPicture.asset(
              'assets/weather/clear.svg',
              width: MediaQuery.of(context).size.width * 0.40,
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              '14º',
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                letterSpacing: 1,
                color: Theme.of(context).primaryColor,
                fontSize: 72.0,
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
                    '12/2',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                      letterSpacing: 1,
                      color: Theme.of(context).primaryColor.withOpacity(0.5),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  child: Container(
                    color: Theme.of(context).primaryColor,
                    height: 300,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
