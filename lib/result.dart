import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function() resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome';
    } else if (resultScore <= 12) {
      resultText = 'You\'re Pretty Likeable';
    } else {
      resultText = 'You are .... Awesome!';

    }
    return resultText;
  }

  //const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: const TextStyle(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(
          onPressed: () => resetHandler(),
          child: Text('Restart Quiz'),
        )
      ],
    ));
  }
}
