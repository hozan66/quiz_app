import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class Result extends StatelessWidget {
  final Function() restQuizMethod;
  final int resultScore;

  Result(this.restQuizMethod, this.resultScore);

  //value will assigned dynamically
  String get resultPhrase {
    String resultText = '';
    if (resultScore == 100) {
      resultText = 'Excellent!';
    } else if (resultScore == 80) {
      resultText = 'Very Good!';
    } else if (resultScore == 60) {
      resultText = 'Good!';
    } else if (resultScore == 40) {
      resultText = 'Bad!';
    } else {
      resultText = 'Failed!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your Score: $resultScore %',
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
              color: isSwitched == false ? Colors.black : Colors.white,
            ),
            // textAlign: TextAlign.center,
          ),
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: isSwitched == false ? Colors.black : Colors.white,
            ),
          ),
          const SizedBox(height: 20.0),
          TextButton(
              onPressed: restQuizMethod,
              child: const Text(
                'Reset The App',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30.0,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                ),
              ))
        ],
      ),
    );
  }
}
