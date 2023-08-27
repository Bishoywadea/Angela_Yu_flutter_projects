import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: const Center(
          child: Image(
            image: AssetImage('images/2.png'),
          ),
        ),
        appBar: AppBar(
          title: const Center(child: Text('iam rich')),
          backgroundColor: Colors.purpleAccent,
        ),
      ),
    ),
  );
}
