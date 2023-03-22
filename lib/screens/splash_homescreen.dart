import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'language _screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => LanguageScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/main_logo.png",
              height: 75,
              width: 75,
            ),
            RichText(
              text: TextSpan(
                  text: 'O N ',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black87,
                      fontWeight: FontWeight.normal),
                  children: [
                    TextSpan(
                        text: 'D E M A N D S E V',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))
                  ]),
            ),
            SizedBox(
              height: 80,
            ),
            SpinKitCircle(
              color: Colors.black,
              size: 50,
            ),
            // CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
