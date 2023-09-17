import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  double? _bmi; // Make it nullable since it's initialized later.

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi == null) {
      return 'Calculate BMI first';
    } else if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi == null) {
      return 'Calculate BMI first';
    } else if (_bmi! >= 25) {
      return 'Your body weight is more than normal';
    } else if (_bmi! >= 18.5) {
      return 'You have normal body weight';
    } else {
      return 'Your body weight is lower than normal';
    }
  }
}
