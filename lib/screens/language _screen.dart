import 'package:flutter/material.dart';

import 'login_screen.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  bool? isChecked = false;
  bool? isCorrect = false;
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 60, 0, 50),
                      child: Text(
                        "SELECT LANGUAGE",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            color: Colors.black),
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/images/lang_logo.png",
                      height: 55,
                      width: 55,
                    ),
                  ],
                ),
                CheckboxListTile(
                  activeColor: Colors.black,
                  checkboxShape: CircleBorder(),
                  controlAffinity: ListTileControlAffinity.trailing,
                  title: Text(
                    "ENGLISH",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                  value: isChecked,
                  onChanged: (newBool) {
                    setState(() {
                      isChecked = newBool;
                    });
                  },
                ),
                Divider(
                  height: 0.2,
                  thickness: 1.5,
                  indent: 18.0,
                  endIndent: 20.0,
                ),
                CheckboxListTile(
                  activeColor: Colors.black,
                  checkboxShape: CircleBorder(),
                  controlAffinity: ListTileControlAffinity.trailing,
                  title: Text(
                    "AKAN",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                  value: isCorrect,
                  onChanged: (newBool) {
                    setState(() {
                      isCorrect = newBool;
                    });
                  },
                ),
                Divider(
                  height: 0.2,
                  thickness: 1.5,
                  indent: 17.0,
                  endIndent: 20.0,
                ),
                CheckboxListTile(
                  activeColor: Colors.black,
                  checkboxShape: CircleBorder(),
                  controlAffinity: ListTileControlAffinity.trailing,
                  title: Text(
                    "EWE",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                  value: isCheck,
                  onChanged: (newBool) {
                    setState(() {
                      isCheck = newBool;
                    });
                  },
                ),
                Divider(
                  height: 0.2,
                  thickness: 1.5,
                  indent: 17.0,
                  endIndent: 20.0,
                ),
                SizedBox(
                  height: 275,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black87,
                        minimumSize: Size(350, 50)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen1(),
                        ),
                      );
                    },
                    child: Text(
                      "CONTINUE",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
