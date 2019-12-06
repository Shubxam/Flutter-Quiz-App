import 'package:flutter/material.dart';

import './Quiz.dart';
import './Result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var fScore = 0;
  void _changeQuestion(int cScore) {
    fScore += cScore;
    setState(() {
      _questionIndex += 1;
    });
  }

  static const _questions = [
    {
      'questionText': "What is your favourite movie?",
      'optionText': [{'text' : '3 Idiots', 'score' : 8}, {'text' : 'War', 'score' : 6}, {'text' : 'Dabangg', 'score' : 2}, {'text' : 'PK', 'score' : 9}],
    },
    {
      'questionText': "What is your favourite food?",
      'optionText': [{'text' : 'Pav Bhaji', 'score' : 8}, {'text' : 'Aloo Paratha', 'score' : 6}, {'text' : 'Pizza', 'score' : 2}, {'text' : 'Biryani', 'score' : 9}],
    },
    {
      'questionText': "Who is your favourite Actor?",
      'optionText': [{'text' : 'Ayushman', 'score' : 9}, {'text' : 'Hritik', 'score' : 10}, {'text' : 'Salman', 'score' : 2}, {'text' : 'Aamir', 'score' : 9}],
    },
  ];
  @override
  Widget build(BuildContext build) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  changeQuestion: _changeQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(fScore),
        ),
      );
}
