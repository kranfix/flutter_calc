import 'package:calc_core/calc.dart';

var calc = Calculator();

addDigit(Calculator calc, int digit) {
  calc.addDigit(digit);
  print('  adding digit ${digit}:\t${calc.text}');
}

addPoint(Calculator calc) {
  try {
    calc.addPoint();
    print('  adding point:\t\t${calc.text}');
  } catch (e) {
    print('  adding point:\t${e}');
  }
}

backspace(Calculator calc) {
  calc.backspace();
  print('  backspace:\t${calc.text}');
}

operate(Calculator calc) {
  calc.operate();
  print('  operate:\t\t${calc.text}');
}

sum() {
  calc.clear();
  addDigit(calc, 9);
  addDigit(calc, 3);
  addPoint(calc);
  addDigit(calc, 2);
  addPoint(calc);

  calc.setAdditionOperator();

  calc.addDigit(1);
  addDigit(calc, 7);
  addPoint(calc);
  addDigit(calc, 0);

  operate(calc);
}

main() {
  sum();
}
