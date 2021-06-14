import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  Result(this.resultScore, this.resetQuiz);

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
      child: Column(
        children: [
          Text(
            resultText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.amber,
            ),
          ),
          TextButton(
            style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.blue),),
            onPressed: resetQuiz,
            child: Text(
              'Reset Quiz',
            ),
          )
        ],
      ),
    );
  }
}
