import 'package:calc_core/number.dart';

addDigit(Number N, int n) {
  try {
    N.addDigit(n);
    print('#addDigit($n): String("${N.literal}") - double(${N.number})');
  } catch (e) {
    if (e == notValidDigitError) {
      print('#addDigit($n): ${e}');
    }
  }
}

addPoint(Number N) {
  try {
    N.addPoint();
    print('#addPoint(): String("${N.literal}") - double(${N.number})');
  } catch (e) {
    if (e == existingPointError) {
      print('#addPoint(): ${e}');
    }
  }
}

delDigit(Number N) {
  try {
    N.del();
    print('#delDigit(): String("${N.literal}") - double(${N.number})');
  } catch (e) {
    if (e == notValidActionForVoidNumber) {
      print('#delDigit(): ${e}');
    }
  }
}

clear(Number N) {
  N.clear();
  print('#clear(): String("${N.literal}") - double(${N.number})');
}

example01() {
  var N = Number();
  print('Initial value: String("${N.literal}") - double(${N.number})');
  addDigit(N, 4);
  addDigit(N, 3);
  addPoint(N);
  addPoint(N);
  delDigit(N);
  addPoint(N);
  addDigit(N, 2);
  addPoint(N);
  addDigit(N, 5);
  delDigit(N);
  clear(N);
  delDigit(N);
}

example02_sum() {
  var N1 = Number.fromDouble(15.6);
  var N2 = Number.fromDouble(32.1);

  var N3 = N1 + N2;
  print('N3 = N1 + N2 : String("${N3.literal}") - double(${N3.number})');
  N3 += N1;
  print('N3 += N1 : String("${N3.literal}") - double(${N3.number})');

  var N4 = Number();
  try {
    N3 += N4;
    print("This should not be printed because N4 is a void Number");
  } catch (e) {
    print("N3 += N4: $e");
    print("N3 = ${N3.literal}");
  }
}

example03_sub() {
  var N1 = Number.fromDouble(42.1);
  var N2 = Number.fromDouble(15.6);

  var N3 = N1 - N2;
  print('N3 = N1 - N2 : String("${N3.literal}") - double(${N3.number})');
  N3 -= N1;
  print('N3 -= N1 : String("${N3.literal}") - double(${N3.number})');

  var N4 = Number();
  try {
    N3 -= N4;
    print("This should not be printed because N4 is a void Number");
  } catch (e) {
    print("N3 -= N4: $e");
    print("N3 = ${N3.literal}");
  }
}

example04_prod() {
  var N1 = Number.fromDouble(2.1);
  var N2 = Number.fromDouble(3.0);

  var N3 = N1 * N2;
  print('N3 = N1 * N2 : String("${N3.literal}") - double(${N3.number})');
  N3 *= N1;
  print('N3 *= N1 : String("${N3.literal}") - double(${N3.number})');

  var N4 = Number();
  try {
    N3 *= N4;
    print("This should not be printed because N4 is a void Number");
  } catch (e) {
    print("N3 *= N4: $e");
    print("N3 = ${N3.literal}");
  }
}

example05_div() {
  var N1 = Number.fromDouble(27.0);
  var N2 = Number.fromDouble(3.0);

  var N3 = N1 / N2;
  print('N3 = N1 / N2 : String("${N3.literal}") - double(${N3.number})');
  N3 /= N2;
  print('N3 /= N2 : String("${N3.literal}") - double(${N3.number})');

  var N4 = Number();
  try {
    N3 /= N4;
    print("This should not be printed because N4 is a void Number");
  } catch (e) {
    print("N3 /= N4: $e");
    print("N3 = ${N3.literal}");
  }
}

main() {
  print('--------------- Number() --------------');
  example01();
  print("");
  print("----------- sum ---------------");
  example02_sum();
  print("----------- sub ---------------");
  example03_sub();
  print("----------- prod --------------");
  example04_prod();
  print("----------- div ---------------");
  example05_div();
}
