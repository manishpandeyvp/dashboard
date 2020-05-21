import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'new_card_child.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'result_page.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultPage()));
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: newCardChild(
              icon: FontAwesomeIcons.hamburger,
              text: 'MONDAY',
              desc: 'Breakfast ke liye uth jana!!',
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultPage()));
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: newCardChild(
              icon: FontAwesomeIcons.cookie,
              text: 'TUESDAY',
              desc: 'Aaj Lunch me chhole hain 😋',
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultPage()));
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: newCardChild(
              icon: FontAwesomeIcons.hotdog,
              text: 'WEDNESDAY',
              desc: 'Mess chle jana!!',
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultPage()));
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: newCardChild(
              icon: FontAwesomeIcons.iceCream,
              text: 'THURSDAY',
              desc: 'Aaj bhi... lol',
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultPage()));
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: newCardChild(
              icon: FontAwesomeIcons.pepperHot,
              text: 'FRIDAY',
              desc: 'Paise diye hain mess walo ko!',
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultPage()));
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: newCardChild(
              icon: FontAwesomeIcons.pizzaSlice,
              text: 'SATURDAY',
              desc: 'Sun liya kar meri bhi... ',
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultPage()));
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: newCardChild(
              icon: FontAwesomeIcons.solidLemon,
              text: 'SUNDAY',
              desc: 'Bhai aaj Sun h.. jaroor jaana!!',
            ),
          ),
        ),
      ],
    );
  }
}

//SafeArea(
//child: Scaffold(
//floatingActionButton: FloatingActionButton(
//onPressed: () {
//setState(() {
//Navigator.pop(context);
//});
//},
//backgroundColor: kFABColor,
//child: Icon(
//Icons.arrow_back,
//color: kIconColor,
//),
//),
//body:
