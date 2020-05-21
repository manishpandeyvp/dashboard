import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'all_constants.dart';
import 'input_page.dart';
import 'result_page_today.dart';

class MessTry extends StatefulWidget {
  MessTry({Key key}) : super(key: key);

  @override
  _MessTryState createState() => _MessTryState();
}

class _MessTryState extends State<MessTry> {
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
      body: selectedIndex == 0 ? ResultPageToday() : InputPage(),
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: kBackgroundColor,
          selectedItemBorderColor: kBackgroundColor,
          selectedItemBackgroundColor: Colors.white,
          selectedItemIconColor: kBackgroundColor,
          selectedItemLabelColor: Colors.white,
          showSelectedItemShadow: false,
          barHeight: 55,
          unselectedItemIconColor: Colors.white,
          unselectedItemLabelColor: Colors.white,
        ),
        selectedIndex: selectedIndex,
        onSelectTab: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.calendar_today,
            label: 'Working Days',
          ),
          FFNavigationBarItem(
            iconData: Icons.people,
            label: 'Weekend',
            selectedBackgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
