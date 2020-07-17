import 'package:flutter/material.dart';
import 'package:dashboard/utilities/all_constants.dart';
import 'package:dashboard/components/bus_schedule.dart';

class BusScheduleScreen extends StatefulWidget {
  @override
  _BusScheduleScreenState createState() => _BusScheduleScreenState();
}

class _BusScheduleScreenState extends State<BusScheduleScreen> {
  List items = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: kBackgroundColor,
                      size: 23,
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Text(
              'BUS SCHEDULE',
              style: TextStyle(
                color: kBackgroundColor,
                fontSize: size.height * 0.05,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Divider(
                color: kBackgroundColor,
                thickness: 1.2,
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 80, // card height
                child: busSwipeableCards(),
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(
                  left: size.width * 0.05,
                  right: size.width * 0.05,
                  bottom: size.height * 0.02),
              height: size.height * 0.55,
              width: size.width - size.width * 0.15,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListView.builder(
                itemCount: busTime[_index].length,
                itemBuilder: (context, i) {
                  return BusScheduleCard(
                    size: size,
                    time: busTime[_index][i],
                    route: busRoute[_index][i],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  PageView busSwipeableCards() {
    return PageView.builder(
      itemCount: 7,
      onPageChanged: (int index) {
        setState(() {
          return _index = index;
        });
      },
      itemBuilder: (_, i) {
        return Transform.scale(
          scale: i == _index ? 0.9 : 0.75,
          child: Card(
            color: kBackgroundColor,
            elevation: 6,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Text(
                items[i],
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        );
      },
      controller: PageController(viewportFraction: 0.25),
    );
  }
}

class BusScheduleCard extends StatelessWidget {
  const BusScheduleCard({
    Key key,
    @required this.size,
    @required this.time,
    @required this.route,
  }) : super(key: key);

  final Size size;
  final String time;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: size.height * 0.085,
            width: size.width - size.width * 0.15,
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
              child: Row(
                children: [
                  Text(
                    time,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.height * 0.024,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.1,
                  ),
                  SizedBox(
                    width: 10,
                    height: 2,
                    child: Divider(
                      color: Colors.white,
                      thickness: 2,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.1,
                  ),
                  Text(
                    route,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.height * 0.024,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
            child: Container(
              width: 1.2,
              height: size.height * 0.03,
              color: Colors.white,
              child: VerticalDivider(
                thickness: 1.2,
                color: kBackgroundColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
