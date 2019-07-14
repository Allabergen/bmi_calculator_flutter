import 'package:flutter/material.dart';

const gendertextStyle = TextStyle(fontSize: 16.0, color: Color(0xFF8D8E98));
const faIconSize = 60.0;
const gap = 15.0;

class IconContent extends StatelessWidget {
  final IconData faIcon;
  final String gender;

  IconContent({this.faIcon, this.gender});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          faIcon,
          size: faIconSize,
        ),
        SizedBox(
          height: gap,
        ),
        Text(gender, style: gendertextStyle),
      ],
    );
  }
}
