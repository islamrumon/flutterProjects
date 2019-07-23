import 'dart:math';

class calculat {
  calculat(this.wight, this.height);
  double wight;
  double height;

  double _bmi;
  double calculatBMI() {
    _bmi = wight / pow(height / 100, 2);
    return _bmi;
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }


  String getAdvice() {
    if (_bmi >= 25) {
      return "Use this calculator to check your body mass index (BMI) and find out if you're a healthy weight. Or you can use it ";
    } else if (_bmi > 18.5) {
      return "Use this calculator to check your body mass index (BMI) and find out if you're a healthy weight. Or you can use it ";
    } else {
      return "Use this calculator to check your body mass index (BMI) and find out if you're a healthy weight. Or you can use it ";
    }
  }
}
