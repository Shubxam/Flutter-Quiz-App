import 'package:flutter/material.dart';
import './Questions.dart';
import './Answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function changeQuestion;

  Quiz({
    this.questions,
    this.questionIndex,
    this.changeQuestion,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        Answer(changeQuestion,
            (questions[questionIndex]['optionText'] as List<String>)[0]),
        Answer(changeQuestion,
            (questions[questionIndex]['optionText'] as List<String>)[1]),
        Answer(changeQuestion,
            (questions[questionIndex]['optionText'] as List<String>)[2]),
        Answer(changeQuestion,
            (questions[questionIndex]['optionText'] as List<String>)[3]),
      ],
    );
  }
}
