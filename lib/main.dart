import 'package:flutter/material.dart';
import 'package:partnerapp/screens/splash_homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      // theme: ThemeData(
      //   primarySwatch: Colors.white,
      // ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
