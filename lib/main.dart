import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestions() {
    print("Answer to Question");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\' your favorite color?',
      'what\'s your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First App"),
        ),
        body: Column(
          children: [
            Text('The questions!'),
            RaisedButton(
              onPressed: answerQuestions,
              child: Text('Answer 1'),
            ),
            RaisedButton(
              onPressed: answerQuestions,
              child: Text('Answer 2'),
            ),
            RaisedButton(
              onPressed: answerQuestions,
              child: Text('Answer 3'),
            )
          ],
        ),
      ),
    );
  }
}
