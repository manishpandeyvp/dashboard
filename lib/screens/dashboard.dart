import 'file:///C:/Users/hp/AndroidStudioProjects/dashboard/lib/utilities/all_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/hp/AndroidStudioProjects/dashboard/lib/screens/faculty_search_screen.dart';
import 'mess_menu_screen.dart';
import 'bus_schedule_screen.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Icon(
                  Icons.account_circle,
                  color: Colors.white,
                  size: 32,
                ),
                Spacer(),
                Text(
                  'IIITDMJ ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Companion',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
            SizedBox(
              height: size.height * 0.08,
            ),
            Row(
              children: [
                Text(
                  'Hello, ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                Text(
                  'Suchir Sharma',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '2019148',
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 17,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Text(
              'What are you looking for today ?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w100,
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )),
                    child: Container(
                      height: size.width * 0.35,
                      width: size.width * 0.35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Spacer(),
                          Icon(
                            Icons.today,
                            color: kBackgroundColor,
                            size: size.width * 0.12,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Timetable',
                            style: TextStyle(
                                color: kBackgroundColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer()
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FacultySearchScreen()));
                    });
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )),
                    child: Container(
                      height: size.width * 0.35,
                      width: size.width * 0.35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Spacer(),
                          Icon(
                            Icons.people,
                            color: kBackgroundColor,
                            size: size.width * 0.12,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Faculty',
                            style: TextStyle(
                                color: kBackgroundColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer()
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BusScheduleScreen()));
                    });
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )),
                    child: Container(
                      height: size.width * 0.35,
                      width: size.width * 0.35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Spacer(),
                          Icon(
                            Icons.airport_shuttle,
                            color: kBackgroundColor,
                            size: size.width * 0.12,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Bus Schedule',
                            style: TextStyle(
                                color: kBackgroundColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer()
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MessMenuScreen()));
                    });
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )),
                    child: Container(
                      height: size.width * 0.35,
                      width: size.width * 0.35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Spacer(),
                          Icon(
                            Icons.restaurant,
                            color: kBackgroundColor,
                            size: size.width * 0.12,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Mess Menu',
                            style: TextStyle(
                                color: kBackgroundColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer()
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Spacer(),
                Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 22,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Settings',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w200),
                ),
                Spacer()
              ],
            )
          ],
        ),
      )),
    );
  }
}
