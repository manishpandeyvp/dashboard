//import 'package:flutter/material.dart';
//import 'package:timeline_tile/timeline_tile.dart';
//
//
//class ShowcaseTimelineTile extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      decoration: const BoxDecoration(
//        gradient: LinearGradient(
//          begin: Alignment.topLeft,
//          end: Alignment.bottomRight,
//          colors: [
//            Color(0xFF004E92),
//            Color(0xFF000428),
//          ],
//        ),
//      ),
//      child: SafeArea(
//        child: Scaffold(
//          backgroundColor: Colors.transparent,
//          body: Center(
//            child: Column(
//              children: <Widget>[
//                SizedBox(height: 16),
//                Text(
//                  'TimelineTile Showcase',
//                  style: TextStyle(
//                    fontSize: 32,
//                    color: Colors.white,
//                  ),
//                ),
//                SizedBox(height: 16),
//                Expanded(
//                  child: ListView.builder(
//                    itemCount: examples.length,
//                    itemBuilder: (BuildContext context, int index) {
//                      final example = examples[index];
//
//                      return TimelineTile(
//                        alignment: TimelineAlign.manual,
//                        lineX: 0.1,
//                        isFirst: index == 0,
//                        isLast: index == examples.length - 1,
//                        indicatorStyle: IndicatorStyle(
//                          width: 40,
//                          height: 40,
//                          indicator: _IndicatorExample(number: '${index + 1}'),
//                          drawGap: true,
//                        ),
//                        topLineStyle: LineStyle(
//                          color: Colors.white.withOpacity(0.2),
//                        ),
//                        rightChild: GestureDetector(
//                          child: _RowExample(),
//                        ),
//                      );
//                    },
//                  ),
//                )
//              ],
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}
//
//class _IndicatorExample extends StatelessWidget {
//  const _IndicatorExample({Key key, this.number}) : super(key: key);
//
//  final String number;
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      decoration: BoxDecoration(
//        shape: BoxShape.circle,
//        border: Border.fromBorderSide(
//          BorderSide(
//            color: Colors.white.withOpacity(0.2),
//            width: 4,
//          ),
//        ),
//      ),
//      child: Center(
//        child: Text(
//          number,
//          style: const TextStyle(fontSize: 30),
//        ),
//      ),
//    );
//  }
//}
//
//class _RowExample extends StatelessWidget {
//  const _RowExample({Key key}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return Padding(
//      padding: const EdgeInsets.all(20),
//      child: Row(
//        children: <Widget>[
//          Expanded(
//            child: Text(
//              'manish',
//              style: TextStyle(
//                color: Colors.white,
//                fontSize: 18,
//              ),
//            ),
//          ),
//          const Icon(
//            Icons.navigate_next,
//            color: Colors.white,
//            size: 26,
//          ),
//        ],
//      ),
//    );
//  }
//}
