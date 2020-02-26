import 'package:flutter/material.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: new CalculatorApp(),
    );
  }
}
class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String result = '0';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('calculator',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            alignment: Alignment.centerRight,
            child: Text(result,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 90,
                color: Colors.white,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            ],
          )
        ],
      ),
    );
  }

  FlatButton getCircleButton(String buttonText, {
    Color buttonColor = Colors.white30,
    Color textColor = Colors.white30,
    int width = 50,
  }) {
    return FlatButton(
      onPressed: () {},
      child:
      Text(
        buttonText,
        style: TextStyle(
            fontSize: 50,
            color: textColor
        ),
      ),
      color: buttonColor,
      shape: CircleBorder(),
      padding: EdgeInsets.all(15.0),
    );
  }
  FlatButton getRoundRectButton(String buttonText, {
    Color buttonColor = Colors.white30,
    Color textColor = Colors.white,
    int width = 50,
  }) {
    return FlatButton(
      onPressed: () {

      },
      child: Text(
        buttonText,
        style: TextStyle(

            fontSize: 50,
            color: textColor
        ),
      ),
      color: buttonColor,
      shape: StadiumBorder(),
      padding: EdgeInsets.only(left: 30, top: 15.0, right: 125, bottom: 15.0),
    );
  }
}