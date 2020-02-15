import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabTime extends StatelessWidget {
  final Function(dynamic) notifyParent;
  final bool activeHourly;
  TabTime({Key key, @required this.notifyParent, this.activeHourly}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .1,
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0), color: Colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 30),
              onPressed: () => notifyParent('hourly'),
              child: Text(
                'HOURLY',
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Theme.of(context).primaryColor),
              ),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              color: activeHourly ? Color(0xFFE5E6FC) : Colors.transparent,
            ),
          ),
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 30),
              onPressed: () => notifyParent('daily'),
              child: Text(
                'DAILY',
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Theme.of(context).primaryColor),
              ),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              color: !activeHourly ? Color(0xFFE5E6FC) : Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
