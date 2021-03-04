import 'package:flutter/material.dart';
import 'package:bmi_calc/constants.dart';

class IconContent extends StatelessWidget {
  final String genderText;
  final IconData icon;

  IconContent({@required this.genderText, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(genderText, style: kLabelTextStyle),
      ],
    );
  }
}
