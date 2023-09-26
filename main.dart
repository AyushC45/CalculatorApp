import 'package:flutter/material.dart';
import 'button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double firstNum = 0;
  double secondNum = 0;
  String _display = "";
  String res = "";
  String operation = "";

  void buttonClick(String value) {
    print(value);
    if (value == 'Clear') {
      setState(() {
        _display = '';
        firstNum = 0;
        secondNum = 0;
        res = '';
      });
    } else if (value == '+' || value == '-' || value == '*' || value == '/') {
      setState(() {
        firstNum = double.parse(_display);
        _display = '';
        res = '';
        operation = value;
      });
    } else if (value == '=') {
      setState(() {
        secondNum = double.parse(_display);
        if (operation == '+') {
          res = (firstNum + secondNum).toString();
        }
        if (operation == '-') {
          res = (firstNum - secondNum).toString();
        }
        if (operation == '*') {
          res = (firstNum * secondNum).toString();
        }
        if (operation == '/') {
          res = (firstNum / secondNum).toString();
        }
        _display = res;
      });
    } else {
      setState(() {
        if(_display.length >= 1){
          _display = int.parse(_display + value).toString();
        }else{
          _display = int.parse(value).toString();
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
        ),
        body: Container(
          margin: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    _display,
                    style: TextStyle(
                      fontSize: 48,
                      color: Colors.red,
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    text: "9",
                    textSize: 25,
                    callback: buttonClick,
                  ),
                  Button(
                    text: "8",
                    textSize: 25,
                    callback: buttonClick,
                  ),
                  Button(
                    text: "7",
                    textSize: 25,
                    callback: buttonClick,
                  ),
                  Button(
                    text: "Clear",
                    textSize: 20,
                    callback: buttonClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    text: "6",
                    textSize: 25,
                    callback: buttonClick,
                  ),
                  Button(
                    text: "5",
                    textSize: 25,
                    callback: buttonClick,
                  ),
                  Button(
                    text: "4",
                    textSize: 25,
                    callback: buttonClick,
                  ),
                  Button(
                    text: "-",
                    textSize: 25,
                    callback: buttonClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    text: "3",
                    textSize: 25,
                    callback: buttonClick,
                  ),
                  Button(
                    text: "2",
                    textSize: 25,
                    callback: buttonClick,
                  ),
                  Button(
                    text: "1",
                    textSize: 25,
                    callback: buttonClick,
                  ),
                  Button(
                    text: "+",
                    textSize: 25,
                    callback: buttonClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    text: "0",
                    textSize: 25,
                    callback: buttonClick,
                  ),
                  Button(
                    text: "/",
                    textSize: 25,
                    callback: buttonClick,
                  ),
                  Button(
                    text: "*",
                    textSize: 25,
                    callback: buttonClick,
                  ),
                  Button(
                    text: "=",
                    textSize: 25,
                    callback: buttonClick,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
