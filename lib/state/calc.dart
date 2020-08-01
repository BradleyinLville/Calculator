import 'package:flutter/foundation.dart';
import 'package:math_expressions/math_expressions.dart';

class Evaluation {
  static String answer(String equation) {
    try {
      Parser p = new Parser();
      Expression exp = p.parse(equation);
      ContextModel cm = ContextModel();
      String result = "${exp.evaluate(EvaluationType.REAL, cm)}";
      return result;
    } catch (e) {
      return e;
    }
  }
}

class Calc with ChangeNotifier {
  // String _buttonData;
  String _calcAnswer = '0';
  String _calcExpression = '0';
  String _equation = '0';

  // ignore: unnecessary_getters_setters
  set calcAnswer(String newAnswer) {
    _calcAnswer = newAnswer;
  }

  // ignore: unnecessary_getters_setters
  String get calcAnswer => _calcAnswer;

  updateCalcAnswer(String equation) {
    _calcAnswer = Evaluation.answer(equation);
  }

  // ignore: unnecessary_getters_setters
  set calcExpression(String input) {
    _calcExpression = input;
  }

  // ignore: unnecessary_getters_setters
  String get calcExpression => _calcExpression;

  updateCalcExpression(bool isClear, String buttonOutput) {
    if (isClear) {
      calcExpression = '0';
      calcAnswer = '0';
      notifyListeners();
    } else {
      calcExpression = "$calcExpression$buttonOutput";
      _equation = calcExpression;
      notifyListeners();
    }
  }

  buttonPressed(String buttonOutput, bool isClear, bool isEquals) {
    if (isClear) {
      //Output expression == 0
      updateCalcExpression(isClear, buttonOutput);
    } else if (isEquals) {
      _equation = calcExpression;
      updateCalcAnswer(_equation);
    } else {
      if (calcExpression == '0') {
        calcExpression = '';
      }
    }
    updateCalcExpression(isClear, buttonOutput);
  }
}
