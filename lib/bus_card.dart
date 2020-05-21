import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'all_constants.dart';

class BusCard extends StatelessWidget {
  BusCard({@required this.text, @required this.desc});
  final String text;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      decoration: BoxDecoration(
          color: kCardColor, borderRadius: BorderRadius.circular(5.0)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '09:00',
                  style: TextStyle(fontSize: 30.0, color: kTextColor),
                ),
                Text(
                  'AM',
                  style: TextStyle(color: kTextColor),
                )
              ],
            ),
          ),
          SizedBox(
            height: 70,
            width: 1,
            child: Expanded(
                child: Container(
              color: kBackgroundColor,
            )),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    text,
                    style: TextStyle(fontSize: 30.0, color: kTextColor),
                  ),
                  Text(
                    'to',
                    style: TextStyle(color: kTextColor),
                  ),
                  Text(
                    desc,
                    style: TextStyle(color: kTextColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
