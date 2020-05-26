import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'new_card_child.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bus_schedule.dart';
import 'package:dashboard/Faculty_data.dart';
import 'result_page_today.dart';
import 'search_faculty_card.dart';

class InputPage1 extends StatefulWidget {
  @override
  _InputPage1State createState() => _InputPage1State();
}

class _InputPage1State extends State<InputPage1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResultPageToday()));
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: NewCardChild(
                icon: FontAwesomeIcons.hamburger,
                text: 'MESS',
                desc: 'Breakfast ke liye uth jana!!',
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BusSchedule()));
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: NewCardChild(
                icon: FontAwesomeIcons.cookie,
                text: 'BUS',
                desc: 'Aaj ghumne chlte hain',
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FacultyData()));
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: NewCardChild(
                icon: FontAwesomeIcons.cookie,
                text: 'FACULTY',
                desc: 'VKG ko chull machi h exams ki',
              ),
            ),
          ),
        ],
      )),
    );
  }
}
