import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double bmi;

  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return 'OverWeight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (bmi >= 25) {
      return 'You Have A Higher Than Normal Body Weight.Try to Exercise more';
    } else if (bmi > 18.5) {
      return 'You Have A Normal Body Weigh. GOOD JOB!';
    } else {
      return 'You Have a Lower Than Normal Body Weight. You Can Eat a Bit More';
    }
  }
}
