import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

// like global variable
bool isSwitched = false;

class _MyAppState extends State<MyApp> {
  final List<Map<String, Object>> _questions = [
    {
      'questionText': '60 Times of 8 Equals to ??',
      'answers': [
        {'text': '480', 'score': 20},
        {'text': '300', 'score': 0},
        {'text': '250', 'score': 0},
        {'text': '400', 'score': 0},
      ]
    },
    {
      'questionText': '121 Divided by 11 is ??',
      'answers': [
        {'text': '10', 'score': 0},
        {'text': '19', 'score': 0},
        {'text': '18', 'score': 0},
        {'text': '11', 'score': 20},
      ]
    },
    {
      'questionText': 'What\'s the Next Prime Number after 7 ??',
      'answers': [
        {'text': '9', 'score': 0},
        {'text': '11', 'score': 20},
        {'text': '13', 'score': 0},
        {'text': '15', 'score': 0},
      ]
    },
    {
      'questionText': 'Solve 23 + 3 × 3 ??',
      'answers': [
        {'text': '90', 'score': 0},
        {'text': '78', 'score': 0},
        {'text': '32', 'score': 20},
        {'text': '30', 'score': 0},
      ]
    },
    {
      'questionText': 'The Product of 131 × 0 × 300 × 4 ??',
      'answers': [
        {'text': '11', 'score': 0},
        {'text': '0', 'score': 20},
        {'text': '46', 'score': 0},
        {'text': '45', 'score': 0},
      ]
    },
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void _restQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
      print(_totalScore);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Quiz App',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0),
          ),
          actions: [
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
                // print(isSwitched);
              },
              activeColor: Colors.white,
              inactiveThumbColor: Colors.black,
              inactiveTrackColor: Colors.black45,
            ),
          ],
        ),
        body: Container(
          color: isSwitched == false ? Colors.white : Colors.black,
          // alignment: Alignment.center,
          child: _questionIndex < _questions.length
              ? Quiz(_questions, _questionIndex, answerQuestion)
              : Result(_restQuiz, _totalScore),
        ),
      ),
    );
  }
}
