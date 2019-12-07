import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function resetProgress;
  Result(this.finalScore, this.resetProgress);
  String get resultPhrase {
    String resultText;
    if (finalScore < 8) {
      resultText = "You Son of a Bitch";
    } else if (finalScore < 15) {
      resultText = "You're Okay I guess";
    } else {
      resultText = "We are the champion of the world";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text("Reset Quiz Progress!!", style: TextStyle(color: Colors.deepOrange),),
            onPressed: resetProgress,
          )
        ],
      ),
    );
  }
}
