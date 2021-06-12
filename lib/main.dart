import 'package:flutter/material.dart';
import 'package:flutter_app/answer.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var questions = [
    'what\'s your favorite color?',
    'what\'s your favorite animal?',
  ];
  void answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First App"),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            Answer(
              answerQuestions,
            ),
            Answer(
              answerQuestions,
            ),
            Answer(
              answerQuestions,
            ),
          ],
        ),
      ),
    );
  }
}
