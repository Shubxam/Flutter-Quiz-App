

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function changeQuestionCounter;
  final String optionText;
  Answer(this.changeQuestionCounter, this.optionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(optionText),
        onPressed: changeQuestionCounter,
      ),
    );
  }
}
