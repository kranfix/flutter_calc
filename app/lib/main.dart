import 'package:flutter/material.dart';
import 'package:calc_core/calc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Calc(),
    );
  }
}

class Calc extends StatefulWidget {
  @override
  CalcState createState() {
    return new CalcState();
  }
}

class CalcState extends State<Calc> {
  Calculator core = Calculator();

  addDigit(int digit) {
    setState(() {
      core.addDigit(digit);
    });
  }

  addPoint() {
    setState(() {
      core.addPoint();
    });
  }

  addSum() {
    setState(() {
      core.setAdditionOperator();
    });
  }

  addSub() {
    setState(() {
      core.setSubtranctionOperator();
    });
  }

  addProduct() {
    setState(() {
      core.setProductOperator();
    });
  }

  addDiv() {
    setState(() {
      core.setDivisinOperator();
    });
  }

  backspace() {
    setState(() {
      core.backspace();
    });
  }

  clear() {
    setState(() {
      core.clear();
    });
  }

  operate() {
    setState(() {
      core.operate();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("FlutterCalc"),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 0.0),
              child: Text(
                core.text,
                style: TextStyle(fontFamily: 'Digital', fontSize: 25.0),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text("7"),
                  onPressed: () {
                    addDigit(7);
                  },
                ),
                RaisedButton(
                  child: Text("8"),
                  onPressed: () {
                    addDigit(8);
                  },
                ),
                RaisedButton(
                  child: Text("9"),
                  onPressed: () {
                    addDigit(9);
                  },
                ),
                RaisedButton(
                  child: Text("⌫"), // U+232B
                  onPressed: backspace,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text("4"),
                  onPressed: () {
                    addDigit(4);
                  },
                ),
                RaisedButton(
                  child: Text("5"),
                  onPressed: () {
                    addDigit(5);
                  },
                ),
                RaisedButton(
                  child: Text("6"),
                  onPressed: () {
                    addDigit(6);
                  },
                ),
                RaisedButton(
                  child: Text("+"),
                  onPressed: addSum,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text("1"),
                  onPressed: () {
                    addDigit(1);
                  },
                ),
                RaisedButton(
                  child: Text("2"),
                  onPressed: () {
                    addDigit(2);
                  },
                ),
                RaisedButton(
                  child: Text("3"),
                  onPressed: () {
                    addDigit(2);
                  },
                ),
                RaisedButton(
                  child: Text("-"),
                  onPressed: addSub,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text("0"),
                  onPressed: () {
                    addDigit(1);
                  },
                ),
                RaisedButton(
                  child: Text("."),
                  onPressed: () {
                    addDigit(2);
                  },
                ),
                RaisedButton(
                  child: Text("/"),
                  onPressed: addDiv,
                ),
                RaisedButton(
                  child: Text("*"),
                  onPressed: addProduct,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text("CLR"),
                  onPressed: clear,
                ),
                RaisedButton(
                  child: Text("ENTER"),
                  onPressed: operate,
                ),
              ],
            )
          ],
        ));
  }
}
