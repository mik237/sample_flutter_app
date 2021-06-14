import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerCallback;
  final String answerText;

  Answer(this.answerCallback, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          onPrimary: Colors.white,
        ),
        onPressed: answerCallback,
        child: Text(
          answerText,
        ),
      ),
    );
  }
}
