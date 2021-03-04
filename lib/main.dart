import 'package:flutter/material.dart';
import 'file:///D:/Github/bmi_calc/bmi_calc/lib/screens/input_page.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF242424),
        scaffoldBackgroundColor: Color(0xFF100F10),
        accentColor: Colors.teal,
        /*textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),*/
      ),
      home: InputPage(),
    );
  }
}
