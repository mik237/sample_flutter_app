import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  var questionIndex = 0;
  var questions = [
    'what\'s your favorite color?',
    'what\'s your favorite animal?',
  ];
  void answerQuestions() {
    setState(() {
      questionIndex = questionIndex + 1;
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
            Text(questions[questionIndex]),
            RaisedButton(
              onPressed: answerQuestions,
              child: Text('Answer 1'),
            ),
            RaisedButton(
              onPressed: () => print('Answer to Question 2'),
              child: Text('Answer 2'),
            ),
            RaisedButton(
              onPressed: () {
                print('Answer to Question 3');
              },
              child: Text('Answer 3'),
            )
          ],
        ),
      ),
    );
  }
}
