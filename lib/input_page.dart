import 'package:flutter/material.dart';

const bottomHeight = 80.0;
const widgetColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEb1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReusableCard(customColor: widgetColor),
                ),
                Expanded(
                  child: ReusableCard(customColor: widgetColor),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(customColor: widgetColor),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(customColor: widgetColor),
                ),
                Expanded(
                  child: ReusableCard(customColor: widgetColor),
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

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.customColor});

  final Color customColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: customColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
