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
        Answer(() => changeQuestion((questions[questionIndex]['optionText'] as List<Map<String, Object>>)[0]['score']),
            (questions[questionIndex]['optionText'] as List<Map<String, Object>>)[0]['text']),
        Answer(() => changeQuestion((questions[questionIndex]['optionText'] as List<Map<String, Object>>)[1]['score']),
            (questions[questionIndex]['optionText'] as List<Map<String, Object>>)[1]['text']),
        Answer(() => changeQuestion((questions[questionIndex]['optionText'] as List<Map<String, Object>>)[2]['score']),
            (questions[questionIndex]['optionText'] as List<Map<String, Object>>)[2]['text']),
        Answer(() => changeQuestion((questions[questionIndex]['optionText'] as List<Map<String, Object>>)[3]['score']),
            (questions[questionIndex]['optionText'] as List<Map<String, Object>>)[3]['text']),
      ],
    );
  }
}
