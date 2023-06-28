import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.white24,
          title: const Center(child: Text('Iam the batman')),
        ),
        body: const Center(
          child: Image(
            image: AssetImage('images/2.png'),
          ),
        ),
      ),
    ),
  );
}
