import 'package:flutter/material.dart';

const labelTextstyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

const activeCardColor = Color(0xFF1D1E33);

class IconContent extends StatelessWidget {
  IconContent({this.genderIcon, @required this.genderText});

  final IconData genderIcon;
  final String genderText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          genderText,
          style: labelTextstyle,
        )
      ],
    );
  }
}
