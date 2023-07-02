import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Container.dart';
import 'Constants.dart';

class GenderCard extends StatelessWidget {
  final IconData shape;
  final String type;
  final Color coulor;
  final VoidCallback onpress;
  GenderCard(
      {this.shape = FontAwesomeIcons.poo,
      this.type = "required",
      this.coulor = unSelectedIconColor,
      required this.onpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: MyContainer(
        containerChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              shape,
              size: 100.0,
              color: coulor,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              type,
              style: TextStyle(
                  color: coulor, fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
