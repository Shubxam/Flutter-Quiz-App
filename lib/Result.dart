import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  Result(this.finalScore);
  String get resultPhrase{
    String resultText;
    if (finalScore < 8) {
      resultText = "You Son of a Bitch";
    } else if (finalScore < 15){
      resultText = "You're Okay I guess";
    } else {
      resultText = "We are the champion of the world";
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
