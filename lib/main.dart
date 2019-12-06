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
  void _changeQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  static const _questions = [
    {
      'questionText': "What is your favourite movie?",
      'optionText': ['3 Idiots', 'War', 'Dabangg', 'PK'],
    },
    {
      'questionText': "What is your favourite food?",
      'optionText': ['Pav Bhaji', 'Aloo Paratha', 'Pizza', 'Biryani'],
    },
    {
      'questionText': "Who is your favourite Actor?",
      'optionText': ['Ayushman', 'Hritik', 'Salman', 'Aamir'],
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
              : Result(),
        ),
      );
}
