import 'package:calc_core/number.dart';

addDigit(Number N, int n){
  try{
    N.addDigit(n);
    print('#addDigit($n): String("${N.literal}") - double(${N.number})');
  } catch(e) {
    if(e == notValidDigitError){
      print('#addDigit($n): ${e}');
    }
  }
}

addPoint(Number N){
  try {
    N.addPoint();
    print('#addPoint(): String("${N.literal}") - double(${N.number})');
  } catch(e) {
    if(e == existingPointError){
      print('#addPoint(): ${e}');
    }
  }
}

delDigit(Number N){
  try {
    N.del();
    print('#delDigit(): String("${N.literal}") - double(${N.number})');
  } catch(e) {
    if(e == notValidActionForVoidNumber){
      print('#delDigit(): ${e}');
    }
  }
}

clear(Number N){
  N.clear();
  print('#clear(): String("${N.literal}") - double(${N.number})');
}

main(){
  var N = Number();
  print('--------------- Number() --------------');
  print('Initial value: String("${N.literal}") - double(${N.number})');
  addDigit(N,4);
  addDigit(N,3);
  addPoint(N);
  addPoint(N);
  addDigit(N,2);
  addPoint(N);
  addDigit(N,5);
  clear(N);
  delDigit(N);
}