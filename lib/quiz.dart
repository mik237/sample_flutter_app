import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';


class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerQuestions;

  Quiz({required this.questions, required this.questionIndex, required this.answerQuestions});
  
  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  Question(
                    questions[questionIndex]['questionText'] as String,
                  ),
                  ...(questions[questionIndex]['answers'] as List<
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
              );
  }
}