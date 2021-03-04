import 'package:flutter/cupertino.dart';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(
      {@required this.height,
      @required this.weight,
      @required this.gender,
      @required this.age});

  final int height;
  final int weight;
  final String gender;
  final int age;
  double _bmi;

  String calculateBMI() {
    _bmi = (weight / pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25.0) {
      return 'Overweight';
    } else if (_bmi > 18.5 && _bmi < 25.0) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (gender == 'Gender.male') {
      if (_bmi >= 25.0) {
        return 'You have a higher than standard normal BMI in Men for your age: $age.';
      } else if (_bmi > 18.5 && _bmi < 25.0) {
        return 'You have a Normal BMI among Men for your age: $age.\nGood Job!';
      } else {
        return 'You have a lower BMI than standard normal BMI in Men for your age: $age.';
      }
    } else {
      if (_bmi >= 25.0) {
        return 'You have a higher than standard normal BMI in Women for your age: $age.';
      } else if (_bmi > 18.5 && _bmi < 25.0) {
        return 'You have a Normal BMI among Women for your age: $age. \nGood Job!';
      } else {
        return 'You have a lower BMI than standard normal BMI in Women for your age: $age.';
      }
    }
  }
}
