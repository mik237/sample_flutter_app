import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerCallback;

  Answer(this.answerCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        onPressed: answerCallback,
        child: Text(
          'Answer 1',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
