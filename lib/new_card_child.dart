import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class newCardChild extends StatelessWidget {
  newCardChild({@required this.text, @required this.icon, @required this.desc});
  final String text;
  final IconData icon;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      decoration: BoxDecoration(
          color: Color(0xFFFFCC01),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60.0),
            bottomLeft: Radius.circular(60.0),
            topRight: Radius.circular(5.0),
            bottomRight: Radius.circular(5.0),
          )),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: FaIcon(
              icon,
              size: 70.0,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 28.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    text,
                    style: TextStyle(fontSize: 30.0, color: Colors.black54),
                  ),
                  Text(
                    desc,
                    style: TextStyle(color: Colors.black54),
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
