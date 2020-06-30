import 'package:flutter/material.dart';
import 'all_constants.dart';
import 'search_bar.dart';

class FacultyData extends StatefulWidget {
  FacultyData({Key key}) : super(key: key);

  @override
  _FacultyDataState createState() => _FacultyDataState();
}

class _FacultyDataState extends State<FacultyData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.pop(context);
          });
        },
        backgroundColor: kFABColor,
        child: Icon(
          Icons.arrow_back,
          color: kIconColor,
        ),
      ),
      body: MyApp(),
    );
  }
}
