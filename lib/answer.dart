import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerCallback;
  final String answerText;

  Answer(this.answerCallback, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(0),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        onPressed: answerCallback,
        textColor: Colors.white,
        child: Text(
          answerText,
        ),
      ),
    );
  }
}
