import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function preSsedfunction;
  final String answerText;
  Answer(this.preSsedfunction, this.answerText);
  //const Answer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey,
      child: ElevatedButton(

        onPressed: () => preSsedfunction(),
        child: Text(answerText),
      ),
    );
  }
}
