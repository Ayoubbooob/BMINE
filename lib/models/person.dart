import 'dart:math';

class Person {
  final int height;
  final int weight;
  static double _bmi = 18.0;
  static String _level = 'Normal';
  static String _msg = '';
  Person({required this.height, required this.weight});
  int? getHeight() {
    return height;
  }

  int? getWeight() {
    return weight;
  }

  String calculBMI() {
    _bmi = (weight / pow(height * 0.01, 2));
    return _bmi.toStringAsFixed(1);
  }

  double getBMI() {
    return _bmi;
  }

  void resultMsg() {
    if (_bmi >= 30.0) {
      _level = 'Overweight III';
      _msg = 'You have a Severely obese situation';
    } else if (_bmi >= 25.0) {
      _level = 'Overweight II';
      _msg = 'You have a Moderately obese situation';
    } else if (_bmi >= 23.0) {
      _level = 'Overweight I';
      _msg = 'You have a normal body weight.\nGood Job!';
    } else if (_bmi >= 18.5) {
      _level = 'Normal';
      _msg = 'You have a normal body weight.\nGood Job!';
    } else {
      _level = 'Unhealthy';
      _msg = 'You have unhealthy body.';
    }
  }

  String getLevel() {
    return _level;
  }

  String getMsg() {
    return _msg;
  }
}
