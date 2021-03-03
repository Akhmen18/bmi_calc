import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;

  // A different type of constructor that assigns the value to my local variable.
  ReusableCard({@required this.colour, this.cardChild});

  /*
  ReusableCard({@required this.colour}) {
    // My Constructor.
  } */

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
