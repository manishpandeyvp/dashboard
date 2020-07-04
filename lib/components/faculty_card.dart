import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utilities/all_constants.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class FacultyCard extends StatefulWidget {
  @override
  _FacultyCardState createState() => _FacultyCardState();
}

class _FacultyCardState extends State<FacultyCard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 23,
                    ),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/download.png'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'VKG',
                style: kFacultyCardTextStyle,
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                'Vijay Kumar Gupta',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                'ASSISTANT PROFESSOR',
                style: kFacultyCardTextStyle,
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                'ME',
                style: kFacultyCardTextStyle,
              ),
              SizedBox(
                height: 10.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: kBackgroundColor,
                borderOnForeground: false,
                shadowColor: Colors.transparent,
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    LineAwesomeIcons.phone,
                    color: Colors.white,
                  ),
                  title: Text(
                    '+91 - 7272028125',
                    style: kFacultyCardTextStyle,
                  ),
                ),
              ),
              Card(
                color: kBackgroundColor,
                borderOnForeground: false,
                shadowColor: Colors.transparent,
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.alternate_email,
                    color: Colors.white,
                  ),
                  title: Text(
                    'vkg@examkichull.com',
                    style: kFacultyCardTextStyle,
                  ),
                ),
              ),
              Card(
                color: kBackgroundColor,
                borderOnForeground: false,
                shadowColor: Colors.transparent,
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    LineAwesomeIcons.glasses,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Dean Students',
                    style: kFacultyCardTextStyle,
                  ),
                ),
              ),
              Card(
                color: kBackgroundColor,
                borderOnForeground: false,
                shadowColor: Colors.transparent,
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.details,
                    color: Colors.white,
                  ),
                  title: Text(
                    'tilda rhega idhar',
                    style: kFacultyCardTextStyle,
                  ),
                ),
              ),
              Card(
                color: kBackgroundColor,
                borderOnForeground: false,
                shadowColor: Colors.transparent,
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Computer Center',
                    style: kFacultyCardTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
