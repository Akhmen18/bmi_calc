import 'package:bmi_calc/components/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calc/constants.dart';
import 'package:bmi_calc/components/reusable_card.dart';
import 'package:bmi_calc/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Results'),
        // ),
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  'Your Results',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Normal',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '18.3',
                    style: kBMITextStyle,
                  ),
                  Text(
                    'Your BMI result is quite Low',
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'Re-Calculate')
        ],
      ),
    ));
  }
}
