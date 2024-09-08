import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi = 0.0;

  CalculatorBrain({required this.height, required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'THỪA CÂN';
    } else if (_bmi > 18.5) {
      return 'BÌNH THƯỜNG';
    } else {
      return 'THIẾU CÂN';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Bạn có trọng lượng cơ thể cao hơn mức bình thường. Hãy tập thể dục thường xuyên và duy trì chế độ ăn uống lành mạnh.';
    } else if (_bmi > 18.5) {
      return 'Bạn có trọng lượng cơ thể bình thường. Tiếp tục duy trì lối sống lành mạnh.';
    } else {
      return 'Bạn có trọng lượng cơ thể thấp hơn mức bình thường. Hãy tham khảo ý kiến bác sĩ để có chế độ ăn uống phù hợp.';
    }
  }
}
