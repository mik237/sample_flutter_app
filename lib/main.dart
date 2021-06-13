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

  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        'Red',
        'Blue',
        'White',
        'Green',
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        'Rabbit',
        'Dog',
        'Cat',
        'Parrot',
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        'Mr. A',
        'Mr. B',
        'Mr. C',
        'Mr. D',
      ],
    },
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
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'] as String,
                  ),
                  ...(questions[_questionIndex]['answers'] as List<
                          String>) // ... operator will extract items from nested list
                      //     and insert in outer list to make a plan list.
                      .map(
                        (answer) => Answer(
                          answerQuestions,
                          answer,
                        ),
                      )
                      .toList(),
                ],
              )
            : Center(
                child: Text(
                  'You did it!',
                ),
              ),
      ),
    );
  }
}
