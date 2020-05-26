import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'all_constants.dart';

class FacultyCard extends StatefulWidget {
  @override
  _FacultyCardState createState() => _FacultyCardState();
}

class _FacultyCardState extends State<FacultyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.arrow_back,
          color: kIconColor,
        ),
        onPressed: () {
          setState(() {
            Navigator.pop(context);
          });
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 10,
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
                height: 10,
              ),
              Text(
                'Vijay Kumar Gupta',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'AmaticSC',
                ),
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
                    Icons.phone,
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
                    Icons.supervisor_account,
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
