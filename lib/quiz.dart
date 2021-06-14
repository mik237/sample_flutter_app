import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestions;

  Quiz(
      {required this.questions,
      required this.questionIndex,
      required this.answerQuestions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        // ... operator will extract items from nested list
        //     and insert in outer list to make a plan list.
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map(
              (answer) => Answer(
                () => answerQuestions(answer['score']),
                answer['text'] as String,
              ),
            )
            .toList(),
      ],
    );
  }
}
