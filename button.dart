import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({required this.text, required this.textSize, required this.callback,});
  final String text;
  final double textSize;
  final Function callback;


  @override
  Widget build(BuildContext context) {
    return Container(
      child:SizedBox(
        width: 75,
        height: 120,
        child: TextButton(
          onPressed: () => callback(text),
          child: Text(
            text,
            style: TextStyle(
              fontSize: textSize,
              color: Colors.red,
          ),
          ),
        ),

      ),
    );
  }
}
