import 'package:flutter/material.dart';

import 'login_screen2.dart';

class LoginScreen1 extends StatefulWidget {
  const LoginScreen1({Key? key}) : super(key: key);

  @override
  State<LoginScreen1> createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 28, 280, 10),
                  alignment: Alignment.centerLeft,
                  height: 40,
                  width: 40,
                  color: Colors.white,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_sharp,
                      size: 30.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                Container(
                  height: 180,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' LIVE',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.black26),
                      ),
                      Text(
                        ' FOR',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.black26),
                      ),
                      Text(
                        ' CLEAN',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.black26),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '  ACCOUNT',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        '   Login/Create Account to manage services',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.black38),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 45,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black87,
                          minimumSize: Size(340, 60)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen2(),
                          ),
                        );
                      },
                      child: Text(
                        "CREATE AN ACCOUNT",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: '    By clicking, I accept the ',
                        style: TextStyle(
                            fontSize: 11,
                            color: Colors.black38,
                            fontWeight: FontWeight.normal),
                        children: [
                          TextSpan(
                              text: 'Terms & Conditions ',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          TextSpan(
                              text: 'and ',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black38)),
                          TextSpan(
                              text: 'Privacy Policy ',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.black54,
                      height: 0.2,
                      thickness: 1.5,
                      indent: 10.0,
                      endIndent: 16.0,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.all(5)),
                        Image.asset(
                          "assets/images/offer_logo.png",
                          height: 30,
                          width: 30,
                        ),
                        Text(
                          '   Offers',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.black87),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 30,
                          ),
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.black12,
                      height: 0.4,
                      thickness: 1.5,
                      indent: 10.0,
                      endIndent: 16.0,
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.all(5)),
                        Image.asset(
                          "assets/images/mail_logo.png",
                          height: 35,
                          width: 35,
                        ),
                        Column(
                          children: [
                            Text(
                              'Send Feedback',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black87),
                            ),
                            Text(
                              '     App version 4.28.2 (1121)',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13,
                                  color: Colors.black38),
                            ),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 30,
                          ),
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
