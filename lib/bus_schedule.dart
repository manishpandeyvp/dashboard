import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'components/bus_card.dart';
import 'all_constants.dart';

class BusSchedule extends StatefulWidget {
  BusSchedule({Key key}) : super(key: key);

  @override
  _BusScheduleState createState() => _BusScheduleState();
}

class _BusScheduleState extends State<BusSchedule> {
  int selectedIndex = 0;

  List<Widget> schedule0 = [
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: BusCard(text: 'Hall4', desc: 'Sadar'),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: BusCard(text: 'Hall4', desc: 'Sadar'),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: BusCard(text: 'Hall4', desc: 'Sadar'),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: BusCard(text: 'Hall4', desc: 'Sadar'),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: BusCard(text: 'Hall4', desc: 'Sadar'),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: BusCard(text: 'Hall4', desc: 'Sadar'),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: BusCard(text: 'Hall4', desc: 'Sadar'),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: BusCard(text: 'Hall4', desc: 'Sadar'),
    ),
  ];
  List<Widget> schedule1 = [
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: BusCard(text: 'Hall1', desc: 'Reliance Fresh'),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: BusCard(text: 'Hall1', desc: 'Reliance Fresh'),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: BusCard(text: 'Hall1', desc: 'Reliance Fresh'),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: BusCard(text: 'Hall1', desc: 'Reliance Fresh'),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: BusCard(text: 'Hall1', desc: 'Reliance Fresh'),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: BusCard(text: 'Hall1', desc: 'Reliance Fresh'),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: BusCard(text: 'Hall1', desc: 'Reliance Fresh'),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: BusCard(text: 'Hall1', desc: 'Reliance Fresh'),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: BusCard(text: 'Hall1', desc: 'Reliance Fresh'),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: BusCard(text: 'Hall1', desc: 'Reliance Fresh'),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: BusCard(text: 'Hall1', desc: 'Reliance Fresh'),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: BusCard(text: 'Hall1', desc: 'Reliance Fresh'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            children: selectedIndex == 0 ? schedule0 : schedule1,
          ),
        ),
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
      ),
    );
  }
}
