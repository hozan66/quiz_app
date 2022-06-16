import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      // color: Colors.amber,
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(
            fontSize: 30.0,
            color: isSwitched == false ? Colors.black : Colors.white,
            fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
