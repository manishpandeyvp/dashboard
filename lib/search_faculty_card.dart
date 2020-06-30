import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'all_constants.dart';
import 'components/faculty_card.dart';

class SearchFacultyCard extends StatefulWidget {
  SearchFacultyCard({
    @required this.text,
    @required this.icon,
    @required this.desc,
  });
  final String text;
  final String icon;
  final String desc;

  @override
  _SearchFacultyCardState createState() => _SearchFacultyCardState();
}

class _SearchFacultyCardState extends State<SearchFacultyCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FacultyCard()));
        });
      },
      child: Container(
        height: 60.0,
        decoration: BoxDecoration(
          color: kBackgroundColor,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: CircleAvatar(
                radius: 25.0,
                backgroundImage: AssetImage(widget.icon),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 28.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      widget.text,
                      style: TextStyle(fontSize: 17.0, color: Colors.white),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      widget.desc,
                      style: TextStyle(fontSize: 13.0, color: Colors.white),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
