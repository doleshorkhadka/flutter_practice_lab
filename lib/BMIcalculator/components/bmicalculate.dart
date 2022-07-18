import 'dart:math';

enum Result {
  overweight,
  normal,
  underweight,
  obese,
}

class BMIcalculate {
  BMIcalculate({required this.height, required this.weight});
  Map<Result, String> interpretation = {
    Result.overweight:
        'Try loosing some weight. It will be better if you do weight loosing exercises daily.',
    Result.normal: 'Your BMI looks normal.You are fine .',
    Result.underweight:
        'Try gaining some weight. It will be better if you do aerobic exercises daily.',
    Result.obese:
        'You have extreme high weight. It will be better if you loose your fat.',
  };
  late double _bmi;
  int? height;
  int? weight;

  Set? getInterpretation() {
    _bmi = weight! / pow(height! / 100, 2);
    String bmi = _bmi.toStringAsFixed(1);
    return _bmi <= 18.4
        ? {bmi, Result.underweight, interpretation[Result.underweight]}
        : ((_bmi >= 18.5) & (_bmi < 24.9))
            ? {bmi, Result.normal, interpretation[Result.normal]}
            : ((_bmi >= 25.0) & (_bmi < 39.9))
                ? {bmi, Result.overweight, interpretation[Result.overweight]}
                : {bmi, Result.obese, interpretation[Result.obese]};
  }
  // String getValue(){

  // }
}
