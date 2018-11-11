/**
 * Author: Frank Moreno (@kranfix)
 */

final notValidDigitError = Exception("No valid Digit, use an int 0 to 9");
final existingPointError = Exception("Number has already a point");
final notValidActionForVoidNumber =
    Exception("Action is not valid for void Number");

class Number {
  String _literal;
  int _pointPosition = -1;

  Number() : _literal = "" {}

  Number._internal(this._literal, this._pointPosition);

  factory Number.fromDouble(double number) {
    String literal = number.toString();
    int pointPosition = literal.indexOf('.');
    return Number._internal(literal, pointPosition);
  }

  addDigit(int digit) {
    if (digit < 0 || digit > 9) throw notValidDigitError;
    _literal += digit.toString();
  }

  addPoint() {
    if (_pointPosition != -1) throw existingPointError;
    _pointPosition = _literal.length;
    _literal = _literal + ".";
  }

  clear() {
    _literal = "";
    _pointPosition = -1;
  }

  del() {
    int n = _literal.length;
    if (n == 0) throw notValidActionForVoidNumber;
    if (_literal[n - 1] == '.') _pointPosition--;
    _literal = _literal.substring(0, n - 2);
  }

  String get literal => _literal;
  double get number => _literal.length == 0? 0.0 : double.parse(_literal);
}
