import 'dart:ffi';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

Void getSound(int x) {
  AudioCache().play('note$x.wav');
}

Widget keyMaker({Color x = Colors.red, int y = 3}) {
  return Expanded(
    child: GestureDetector(
      onTap: () {
        AudioCache().play('note$y.wav');
      },
      child: Container(
        width: 200.0,
        height: 50.0,
        color: x,
      ),
    ),
  );
}

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  keyMaker(x: Colors.red, y: 1),
                  keyMaker(x: Colors.white24, y: 2),
                  keyMaker(x: Colors.teal, y: 3),
                  keyMaker(x: Colors.yellow, y: 4),
                  keyMaker(x: Colors.pink, y: 5),
                  keyMaker(x: Colors.black, y: 6),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
