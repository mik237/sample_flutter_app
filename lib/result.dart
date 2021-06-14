import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultText {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are awsome and innocent!";
    } else if (resultScore <= 12) {
      resultText = "Pretty Likeable!!";
    } else if (resultScore <= 16) {
      resultText = "You are strange!!";
    } else {
      resultText = "You are so bad!";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultText,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.amber,
        ),
      ),
    );
  }
}
