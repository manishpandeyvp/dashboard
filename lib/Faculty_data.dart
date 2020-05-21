import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'bus_card.dart';
import 'all_constants.dart';

class FacultyData extends StatefulWidget {
  FacultyData({Key key}) : super(key: key);

  @override
  _FacultyDataState createState() => _FacultyDataState();
}

class _FacultyDataState extends State<FacultyData> {
  int selectedIndex = 0;

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
      body: Center(
        child: ListView(
          children: <Widget>[],
        ),
      ),
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: kBackgroundColor,
          selectedItemBorderColor: kBackgroundColor,
          selectedItemBackgroundColor: kCardColor,
          selectedItemIconColor: kBackgroundColor,
          selectedItemLabelColor: kCardColor,
          showSelectedItemShadow: false,
          barHeight: 55,
          unselectedItemIconColor: kCardColor,
          unselectedItemLabelColor: kCardColor,
        ),
        selectedIndex: selectedIndex,
        onSelectTab: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.search,
            label: 'Search',
          ),
          FFNavigationBarItem(
            iconData: Icons.people,
            label: 'Positions',
            selectedBackgroundColor: kCardColor,
          ),
        ],
      ),
    );
  }
}
