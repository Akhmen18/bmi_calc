import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton(
      {@required this.icon,
      @required this.boxConstraint,
      @required this.buttonFillColor,
      @required this.onClicked});
  final IconData icon;
  final BoxConstraints boxConstraint;
  final Color buttonFillColor;
  final Function onClicked;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onClicked,
      shape: CircleBorder(),
      elevation: 0.0,
      fillColor: buttonFillColor,
      constraints: boxConstraint,
    );
  }
}
