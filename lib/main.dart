import 'package:flutter/material.dart';
import 'package:upi_app_ui/homepage.dart';
import 'package:upi_app_ui/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavBarWidget(),
      theme: ThemeData(
        fontFamily: 'euclid',
        primaryColor: Colors.purple,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Color(0xff8E74EA) , fontWeight: FontWeight.bold, fontSize: 15.0 ),
        ),
      ),
      // showPerformanceOverlay: true,
      debugShowCheckedModeBanner: false,
      title: "Upi App",
    );
  }
}
