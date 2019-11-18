import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inActiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEb1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inActiveCardColor;
  Color femaleCardColor = inActiveCardColor;

  Gender selectedGender;

  //male = 1, female = 0
//  void updateColor(Gender gender) {
//    if (gender == Gender.male) {
//      if (maleCardColor == inActiveCardColor) {
//        maleCardColor = activeCardColor;
//        femaleCardColor = inActiveCardColor;
//      } else {
//        maleCardColor = inActiveCardColor;
//      }
//    } else {
//      if (femaleCardColor == inActiveCardColor) {
//        femaleCardColor = activeCardColor;
//        maleCardColor = inActiveCardColor;
//      } else {
//        femaleCardColor = inActiveCardColor;
//      }
//    }
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      customColor: selectedGender == Gender.male
                          ? activeCardColor
                          : inActiveCardColor,
                      cardChild: IconContent(
                        genderText: 'MALE',
                        genderIcon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      customColor: selectedGender == Gender.female
                          ? activeCardColor
                          : inActiveCardColor,
                      cardChild: IconContent(
                        genderText: 'FEMLAE',
                        genderIcon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(customColor: activeCardColor),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(customColor: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(customColor: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            height: bottomHeight,
            width: double.infinity,
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}
