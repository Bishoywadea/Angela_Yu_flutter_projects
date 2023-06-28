import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(ball());

class ball extends StatefulWidget {
  @override
  _ballState createState() => _ballState();
}

class _ballState extends State<ball> {
  int bn = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text(
              'ask me anything',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  bn = Random().nextInt(5) + 1;
                });
              },
              child: Center(
                child: Image(
                  image: AssetImage('images/ball$bn.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
