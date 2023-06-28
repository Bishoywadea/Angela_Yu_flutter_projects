import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(yourApp());
}

class yourApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage(
                    'images/2.png',
                  ),
                ),
                Text(
                  'bishoy wadea',
                  style: TextStyle(
                      fontFamily: 'ahmed',
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'flutter developer',
                  style: TextStyle(
                      fontFamily: 'mhmd',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red.shade400,
                      letterSpacing: 2.5),
                ),
                SizedBox(
                  height: 20.0,
                  width: 200.0,
                  child: Divider(
                    color: Colors.teal.shade200,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  padding:
                      EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 20.0,
                        color: Colors.teal.shade500,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        '01204747568',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  padding:
                      EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email_outlined,
                        size: 20.0,
                        color: Colors.teal.shade500,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'bishoyw.fathy@gmail.com',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
