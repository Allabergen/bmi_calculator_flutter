import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RoundIconButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 2.0,
      constraints: BoxConstraints.tightFor(
        height: 48.0,
        width: 48.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4D5E),
      onPressed: onPressed,
    );
  }
}
