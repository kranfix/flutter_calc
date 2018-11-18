/**
 * Author: Frank Moreno (@kranfix)
 */
import 'package:calc_core/number.dart';

/// Operator
enum Op { idle, sum, sub, prod, div }

class Calculator {
  Number num1, num2;
  Op _op = Op.idle;

  Calculator() {
    num1 = Number();
    num2 = Number();
  }

  addDigit(int digit) {
    if (_op == Op.idle) {
      num1.addDigit(digit);
    } else {
      num2.addDigit(digit);
    }
  }

  addPoint() {
    if (_op == Op.idle) {
      num1.addPoint();
    } else {
      num2.addPoint();
    }
  }

  setAdditionOperator() {
    _op = Op.sum;
  }

  setSubtranctionOperator() {
    _op = Op.sub;
  }

  setProductOperator() {
    _op = Op.prod;
  }

  setDivisinOperator() {
    _op = Op.div;
  }

  String operate() {
    switch (_op) {
      case Op.idle:
        return num1.literal;
        break;
      case Op.sum:
        num1 += num2;
        break;
      case Op.sub:
        num1 -= num2;
        break;
      case Op.prod:
        num1 *= num2;
        break;
      case Op.div:
        try {
          num1 /= num2;
        } catch (e) {
          return 'NaN';
        }
        break;
    }

    _op = Op.idle;
    num2.clear();
    return num1.literal;
  }

  String get text {
    String op;
    switch (_op) {
      case Op.idle:
        return num1.literal;
      case Op.sum:
        op = "+";
        break;
      case Op.sub:
        op = "-";
        break;
      case Op.prod:
        op = "x";
        break;
      case Op.div:
        op = "/";
        break;
    }
    return num1.literal + op + (num2.isVoid ? '' : num2.literal);
  }

  backspace() {
    if (_op == Op.idle) {
      num1.del();
    } else if (num2.isVoid) {
      _op = Op.idle;
    } else {
      num2.del();
    }
  }

  clear() {
    _op = Op.idle;
    num1.clear();
    num2.clear();
  }
}
