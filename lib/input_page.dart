import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const double bottomContainerHeight = 80.0;
const Color activeCardColour = Color(0xFF111328);
const Color inactiveCardColour = Color(0xFF1D1E33);
const Color bottomContainerColour = Color(0xFFEB1555);

enum GenderType { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType genderSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        genderSelected = GenderType.male;
                      });
                    },
                    child: ReusableCard(
                      colour: genderSelected == GenderType.male
                          ? activeCardColour
                          : inactiveCardColour,
                      cardChild: IconContent(
                          faIcon: FontAwesomeIcons.mars, gender: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        genderSelected = GenderType.female;
                      });
                    },
                    child: ReusableCard(
                      colour: genderSelected == GenderType.female
                          ? activeCardColour
                          : inactiveCardColour,
                      cardChild: IconContent(
                        faIcon: FontAwesomeIcons.venus,
                        gender: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: inactiveCardColour),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: inactiveCardColour),
                ),
                Expanded(
                  child: ReusableCard(colour: inactiveCardColour),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
