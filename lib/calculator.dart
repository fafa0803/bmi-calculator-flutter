import 'package:flutter/cupertino.dart';
import 'dart:math';

class Calculator {
  Calculator({@required this.height, @required this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getRecommendation() {
    if (_bmi >= 25) {
      return 'You should loose weight!';
    } else if (_bmi > 18.5) {
      return 'You have a normal BMI. Good Job.';
    } else {
      return 'You should eat more';
    }
  }
}
