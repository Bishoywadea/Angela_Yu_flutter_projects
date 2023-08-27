import 'package:flutter/material.dart';
import 'Constants.dart';

class MyContainer extends StatelessWidget {
  final Color backGroundColor;
  final Widget containerChild;
  MyContainer(
      {this.backGroundColor = unSelectedContainerColor,
      this.containerChild = const Column()});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: containerChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: this.backGroundColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
