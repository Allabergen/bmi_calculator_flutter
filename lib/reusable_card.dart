import 'package:flutter/material.dart';

const marginValue = 15.0;
const radius = 10.0;

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(marginValue),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
