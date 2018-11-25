import 'package:flutter/material.dart';

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
  int result = 0;
  void updateCalc(int number){
    setState(() {
      result = result*10+number;
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
              this.result.toString(),
              style: TextStyle(fontFamily: 'Digital',fontSize: 25.0),

            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                child: Text("7"),
                onPressed: () {updateCalc(7);},
              ),
              RaisedButton(
                child: Text("8"),
                onPressed: () {updateCalc(8);},
              ),
              RaisedButton(
                child: Text("9"),
                onPressed: () {updateCalc(9);},
              ),
              RaisedButton(
                child: Text("+"),
                onPressed: () {updateCalc(9);},
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                child: Text("4"),
                onPressed: () {updateCalc(4);},
              ),
              RaisedButton(
                child: Text("5"),
                onPressed: () {updateCalc(5);},
              ),
              RaisedButton(
                child: Text("6"),
                onPressed: () {updateCalc(6);},
              ),
              RaisedButton(
                child: Text("-"),
                onPressed: () {updateCalc(6);},
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                child: Text("1"),
                onPressed: () {updateCalc(1);},
              ),
              RaisedButton(
                child: Text("2"),
                onPressed: () {updateCalc(2);},
              ),
              RaisedButton(
                child: Text("3"),
                onPressed: () {updateCalc(2);},
              ),
              RaisedButton(
                child: Text("*"),
                onPressed: () {updateCalc(6);},
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                child: Text("0"),
                onPressed: () {updateCalc(1);},
              ),
              RaisedButton(
                child: Text("."),
                onPressed: () {updateCalc(2);},
              ),
              RaisedButton(
                child: Text("CLR"),
                onPressed: () {updateCalc(2);},
              ),
              RaisedButton(
                child: Text("/"),
                onPressed: () {updateCalc(6);},
              ),
            ],
          )
        ],
      )
    );
  }
}