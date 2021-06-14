import 'package:flutter/material.dart';
import 'package:flutter_app/answer.dart';
import 'package:flutter_app/quiz.dart';
import 'package:flutter_app/result.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 7},
        {'text': 'White', 'score': 1},
        {'text': 'Green', 'score': 4},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 6},
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 1},
        {'text': 'Parrot', 'score': 3},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Mr. A', 'score': 10},
        {'text': 'Mr. B', 'score': 7},
        {'text': 'Mr. C', 'score': 4},
        {'text': 'Mr. D', 'score': 1},
      ],
    },
  ];

  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                questions: questions,
                questionIndex: _questionIndex,
                answerQuestions: _answerQuestions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
