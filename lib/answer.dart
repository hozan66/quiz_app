import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function() answerMethod;

  Answer(this.answerMethod, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 36.0),
      child: ElevatedButton(
        onPressed: answerMethod,
        child: Text(
          answerText,
          style: const TextStyle(
            fontSize: 24.0,
          ),
        ),
      ),
    );
  }
}
