import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'input_Page1.dart';
import 'all_constants.dart';

void main() {
  //Don't worry about these codes here, as they are not relevant for this example.
//  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//    statusBarColor: Colors.transparent,
//    statusBarIconBrightness: Brightness.dark,
//    systemNavigationBarColor: Colors.white,
//    systemNavigationBarIconBrightness: Brightness.dark,
//    systemNavigationBarDividerColor: Colors.transparent,
//  ));
//  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: 'Poppins',
      ),
      home: DashBoard(),
    );
  }
}
