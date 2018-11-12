/**
 * Author: Frank Moreno (@kranfix)
 */
import 'package:calc_core/number.dart';

/// Operator
enum Op { idle, sum, sub, prod, div }

class Calculator {
  Number num1, num2;
  Op _op = Op.idle;

  Calculator() {}

  addNumber() {}

  addPoint() {}

  String operate() {
    try {
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
          num1 /= num2;
          break;
      }
    } catch (e) {}

    num2.clear();
    return "";
  }

  String get X {
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
    return num1.literal + op + num2.literal;
  }
}
