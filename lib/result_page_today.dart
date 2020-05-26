import 'package:flutter/material.dart';
import 'package:slimy_card/slimy_card.dart';
import 'all_constants.dart';
import 'just_try.dart';

class ResultPageToday extends StatefulWidget {
  @override
  _ResultPageTodayState createState() => _ResultPageTodayState();
}

class _ResultPageTodayState extends State<ResultPageToday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kFABColor,
        child: Icon(
          Icons.add,
          color: kIconColor,
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: InputPage(),
                    ),
                  ));
        },
      ),
      body: StreamBuilder(
        // This streamBuilder reads the real-time status of SlimyCard.
        initialData: false,
        stream: slimyCard.stream, //Stream of SlimyCard
        builder: ((BuildContext context, AsyncSnapshot snapshot) {
          return ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(height: 50),
              SlimyCard(
                topCardWidget: topCardWidget('Breakfast', '07:30 - 09:30'),
                bottomCardWidget: bottomCardWidget(
                    'Option1: Fried Idli, Nariyal Chutney and Sprouts\nOption2: Aloo Bandha, Sauce and Sprouts'),
                color: kCardColor,
                topCardHeight: 150.0,
              ),
              SizedBox(height: 50),
              SlimyCard(
                topCardWidget: topCardWidget('Lunch', '12:30 - 14:30'),
                bottomCardWidget: bottomCardWidget(
                    'Mix-Veg, Arahar Dal, Rice, Chapatti, Tomato Chutney and Curd'),
                color: kCardColor,
                topCardHeight: 150.0,
              ),
              SizedBox(height: 50),
              SlimyCard(
                topCardWidget: topCardWidget('Dinner', '19:30 - 21:30'),
                bottomCardWidget: bottomCardWidget(
                    'Phool Gobhi-Aloo Matar, Dal Fry, Plain  Rice, Paratha, Frymes and Gajar-Halwa'),
                color: kCardColor,
                topCardHeight: 150.0,
              ),
              SizedBox(height: 50),
            ],
          );
        }),
      ),
    );
  }

  // This widget will be passed as Top Card's Widget.
  Widget topCardWidget(String t1, String t2) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          t1,
          style: TextStyle(color: kTextColor, fontSize: 20),
        ),
        SizedBox(height: 15),
        Text(
          t2,
          style: TextStyle(color: kTextColor, fontSize: 12),
        ),
        SizedBox(height: 10),
      ],
    );
  }

  // This widget will be passed as Bottom Card's Widget.
  Widget bottomCardWidget(String m1) {
    return Text(
      m1,
      style: TextStyle(
        color: kTextColor,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );
  }
}

//
//SafeArea(
//child: Scaffold(
//floatingActionButton: FloatingActionButton(
//backgroundColor: kFABColor,
//onPressed: () {
//setState(() {
//Navigator.pop(context);
//});
//},
//child: Icon(
//Icons.arrow_back,
//color: kIconColor,
//),
//),
//body:
