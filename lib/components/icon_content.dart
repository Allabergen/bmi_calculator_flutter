import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

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
          size: kFaIconSize,
        ),
        SizedBox(
          height: kGap,
        ),
        Text(gender, style: kGenderTextStyle),
      ],
    );
  }
}
