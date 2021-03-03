import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomContainerHeight = 65.0;
const Color activeCardColor = Color(0xFF242424);
const Color bottomContainerColor = Color(0xFF7868e6);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.mars, genderText: 'Male'),
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.venus, genderText: 'Female'),
                    colour: activeCardColor,
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReusableCard(
                colour: activeCardColor,
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
              ],
            )),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}

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
        Text(
          genderText,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFFe4fbff),
          ),
        ),
      ],
    );
  }
}

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
