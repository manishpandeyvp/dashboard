import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slimy_card/slimy_card.dart';

class Result_Page extends StatefulWidget {
  @override
  _Result_PageState createState() => _Result_PageState();
}

class _Result_PageState extends State<Result_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurpleAccent,
        onPressed: () {
          setState(() {
            Navigator.pop(context);
          });
        },
        child: Icon(Icons.arrow_back),
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
                color: Color(0xFFFFCC01),
                topCardHeight: 150.0,
              ),
              SizedBox(height: 50),
              SlimyCard(
                topCardWidget: topCardWidget('Lunch', '12:30 - 14:30'),
                bottomCardWidget: bottomCardWidget(
                    'Mix-Veg, Arahar Dal, Rice, Chapatti, Tomato Chutney and Curd'),
                color: Color(0xFFFFCC01),
                topCardHeight: 150.0,
              ),
              SizedBox(height: 50),
              SlimyCard(
                topCardWidget: topCardWidget('Dinner', '19:30 - 21:30'),
                bottomCardWidget: bottomCardWidget(
                    'Phool Gobhi-Aloo Matar, Dal Fry, Plain  Rice, Paratha, Frymes and Gajar-Halwa'),
                color: Color(0xFFFFCC01),
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
  Widget topCardWidget(String T1, String T2) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          T1,
          style: TextStyle(color: Colors.black54, fontSize: 20),
        ),
        SizedBox(height: 15),
        Text(
          T2,
          style: TextStyle(color: Colors.black54, fontSize: 12),
        ),
        SizedBox(height: 10),
      ],
    );
  }

  // This widget will be passed as Bottom Card's Widget.
  Widget bottomCardWidget(String M1) {
    return Text(
      M1,
      style: TextStyle(
        color: Colors.black54,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );
  }
}
