import 'package:flutter/material.dart';
import 'dart:math';

int ldice = 2;
int rdice = 2;
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  //const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    rand();
                  });
                },
                child: Image(
                  image: AssetImage('images/dice$ldice.png'),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    rand();
                  });
                },
                child: Image(
                  image: AssetImage('images/dice$rdice.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void rand() {
  ldice = Random().nextInt(6) + 1;
  rdice = Random().nextInt(6) + 1;
}
