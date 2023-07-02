import 'dart:math';

class Brain {
  final int h;
  final double w;
  double _d = 1;

  Brain({
    this.h = 1,
    this.w = 1,
  });

  String BMI() {
    _d = w / pow(h / 100, 2);
    return _d.toStringAsFixed(1);
  }

  String result() {
    if (_d > 25) {
      return 'Over Weight';
    } else if (_d > 18.5) {
      return 'In Shape';
    } else {
      return 'Too Skinny';
    }
  }
}
